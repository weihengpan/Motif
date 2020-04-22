//
//  MotionDataSample.swift
//  Motif
//
//  Created by Pan Weiheng on 2020/4/2.
//

import UIKit
import CoreMotion

/// A struct representing the sampled data of a single record session.
struct MotionDataSample: Codable, Equatable, Hashable, Identifiable {
    
    // MARK: - Metadata
    var startTime: Date
    var samplingRate: Double
    var deviceModel: String = UIDevice.model
    
    // MARK: - Data
    var id = UUID()
    private(set) var entries: [MotionDataEntry] = []
    
    // MARK: - Static Properties
    static let keyPathsAndTitles: [(PartialKeyPath<MotionDataSample>, String)] = [
        (\MotionDataSample.samplingRate,    "samplingRate"),
        (\MotionDataSample.deviceModel,     "deviceModel")
    ]
    static let metadataKeyPaths = Self.keyPathsAndTitles.map { $0.0 }
    static let metadataTitles = Self.keyPathsAndTitles.map { $0.1 }
    static let dataKeyPaths = MotionDataEntry.keyPathsAndTitles.map { $0.0 }
    static let dataTitles = MotionDataEntry.keyPathsAndTitles.map { $0.1 }
    
    // MARK: - Computed Properties
    var accelerometerDataFirstTimestamp: Date? { entries.first?.accelerometerData?.timestamp }
    var gyroDataFirstTimestamp:          Date? { entries.first?.gyroData?.timestamp }
    var magnetometerDataFirstTimestamp:  Date? { entries.first?.magnetometerData?.timestamp }
    var deviceMotionDataFirstTimestamp:  Date? { entries.first?.deviceMotion?.timestamp }
    var firstTimestamp: Date? {
        let timestamps = [accelerometerDataFirstTimestamp, gyroDataFirstTimestamp, magnetometerDataFirstTimestamp, deviceMotionDataFirstTimestamp]
        return timestamps.compactMap { $0 }.min()
    }
    
    var accelerometerDataLastTimestamp:  Date? { entries.last?.accelerometerData?.timestamp }
    var gyroDataLastTimestamp:           Date? { entries.last?.gyroData?.timestamp }
    var magnetometerDataLastTimestamp:   Date? { entries.last?.magnetometerData?.timestamp }
    var deviceMotionDataLastTimestamp:   Date? { entries.last?.deviceMotion?.timestamp }
    var lastTimestamp: Date? {
        let timestamps = [accelerometerDataLastTimestamp, gyroDataLastTimestamp, magnetometerDataLastTimestamp, deviceMotionDataLastTimestamp]
        return timestamps.compactMap { $0 }.max()
    }
    
    var duration: TimeInterval? {
        guard let start = firstTimestamp, let end = lastTimestamp else { return nil }
        let dateDifference = DateInterval(start: start, end: end)
        return dateDifference.duration
    }

    // MARK: - Methods
    mutating func addEntry(_ entry: MotionDataEntry) {
        entries.append(entry)
    }
    
    func encodeToCSV() -> String {
        let delimiter = ","
        let titles = ["No"] + Self.metadataTitles + Self.dataTitles
        let container = CSVContainer(titles: titles, delimiter: delimiter)
        
        for (index, data) in entries.enumerated() {
            var row = [String]()
            
            row.append(String(index + 1))
            for keyPath in Self.metadataKeyPaths {
                row.append(stringFlatten(self[keyPath: keyPath]))
            }
            for keyPath in Self.dataKeyPaths {
                row.append(stringFlatten(data[keyPath: keyPath]))
            }
            
            try! container.addRow(row)
        }
        
        return container.text
    }
    
    private func stringFlatten(_ input: Any) -> String {
        var string = String(describing: input)
        
        // Remove "Optional()"
        let prefix = "Optional(", suffix = ")"
        if string.hasPrefix(prefix) && string.hasSuffix(suffix) {
            string.removeFirst(prefix.count)
            string.removeLast(suffix.count)
        }
        
        // Add quotes if string contains comma
        if string.contains(",") {
            string = "\"" + string + "\""
        }
        
        return string
    }
    
}
