//
//  Recorder.swift
//  Motif
//
//  Created by Pan Weiheng on 2020/4/1.
//

import Foundation
import Combine
import CoreMotion

class Recorder: ObservableObject {
    
    struct RecordSetting {
        var samplingRate: Double = 100
        var useTimer: Bool = false
        var endTime: Date = Date()
    }
    
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    private let manager = CMMotionManager()
    private var timerSubscription: AnyCancellable? = nil
    var samplingInterval: Double { 1.0 / setting.samplingRate }
    
    @Published var setting = RecordSetting()
    @Published var isRecording = false {
        willSet {
            newValue ? startRecording() : stopRecording()
        }
    }
    @Published var currentDataEntry = MotionDataEntry()
    private(set) var currentDataRecord: MotionDataSample?
    @Published var samples = [MotionDataSample]() {
        didSet {
            saveSampleListToDisk()
        }
    }
    
    private let sampleListFileName = "sampleList.json"
    private var sampleListFileURL: URL {
        FileManager.default.documentDirectoryURL(appending: sampleListFileName)
    }
    
    // MARK: - Initializer
    
    init() {
        loadSampleListFromDisk()
    }

    // MARK: - Methods
    
    private func startRecording() {
        
        guard manager.isDeviceAvailable == true else { return }
        
        // Set sampling intervals
        manager.accelerometerUpdateInterval = samplingInterval
        manager.gyroUpdateInterval          = samplingInterval
        manager.magnetometerUpdateInterval  = samplingInterval
        manager.deviceMotionUpdateInterval  = samplingInterval
        
        // Start data updates
        manager.startAccelerometerUpdates()
        manager.startGyroUpdates()
        manager.startMagnetometerUpdates()
        manager.startDeviceMotionUpdates(using: .xTrueNorthZVertical)
        
        // Initialize data storage
        currentDataRecord = MotionDataSample(startTime: Date(), samplingRate: setting.samplingRate)
        
        // Activate timer
        timerSubscription = Timer.publish(every: samplingInterval, on: .main, in: .common)
            .autoconnect()
            .sink { date in
                guard let accelerometerData = self.manager.accelerometerData,
                    let gyroData = self.manager.gyroData,
                    let magnetometerData = self.manager.magnetometerData,
                    let deviceMotion = self.manager.deviceMotion
                    else { return }
                
                // Save motion data to entry and record
                self.currentDataEntry = MotionDataEntry(
                    accelerometerData: accelerometerData,
                    gyroData: gyroData,
                    magnetometerData: magnetometerData,
                    deviceMotion: deviceMotion
                )
                self.currentDataRecord?.addEntry(self.currentDataEntry)
        }
        
    }
    
    private func stopRecording() {
        
        guard manager.isDeviceAvailable == true else { return }
        
        // Invalidate timer
        timerSubscription?.cancel()
        
        // Stop data updates
        manager.stopAccelerometerUpdates()
        manager.stopGyroUpdates()
        manager.stopMagnetometerUpdates()
        manager.stopDeviceMotionUpdates()
        
        // Add new record to record list
        guard let record = currentDataRecord else { return }
        samples.append(record)
        
        #if DEBUG
        print("Appended sample to samples. Samples count: \(samples.count)")
        
        // Print JSON of sample
//        var data: Data
//        do {
//            data = try encoder.encode(samples)
//        } catch {
//            print("Failed to encode recordList.")
//            return
//        }
//        let string = String(data: data, encoding: .utf8)!
//        print(string)
        #endif
        
        // Clear motion data
        currentDataEntry = MotionDataEntry()
        currentDataRecord = nil
    }

    private func saveSampleListToDisk() {
        
        // Encode samples to JSON data
        var data: Data
        do {
            data = try encoder.encode(samples)
        } catch {
            print("Failed to encode recordList.")
            return
        }
        
        // Write data to disk
        do {
            try data.write(to: sampleListFileURL)
        } catch {
            print("Failed to write recordList data to URL.")
        }
        
        #if DEBUG
        print("Sample list saved to disk with \(samples.count) samples")
        #endif

    }
    
    private func loadSampleListFromDisk() {
        
        // Read data from disk
        var data: Data
        do {
            data = try Data(contentsOf: sampleListFileURL)
        } catch {
            #if DEBUG
            print("Failed to read recordList data from disk.")
            #endif
            return
        }
        
        // Decode JSON data
        var list: [MotionDataSample]
        do {
            list = try decoder.decode([MotionDataSample].self, from: data)
        } catch {
            print("Failed to decode recordList data.")
            return
        }
        
        // Restore list
        samples = list
    }
    
}

extension CMMotionManager {
    
    var isDeviceAvailable: Bool {
        return isAccelerometerAvailable
            && isGyroAvailable
            && isMagnetometerAvailable
            && isDeviceMotionAvailable
    }
}
