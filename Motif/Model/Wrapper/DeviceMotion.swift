//
//  DeviceMotion.swift
//  Motif
//
//  Created by Pan Weiheng on 2020/4/2.
//

import CoreMotion

struct DeviceMotion: Codable, Equatable, Hashable {
    
    enum MagneticFieldCalibrationAccuracy: String, Codable {
        case uncalibrated = "uncalibrated"
        case low = "low"
        case medium = "medium"
        case high = "high"
    }
    
    var timestamp: Date
    var timeSinceBoot: TimeInterval
    
    var attitude: SIMD3<Double>
    var rotationRate: SIMD3<Double>
    
    var gravity: SIMD3<Double>
    var userAcceleration: SIMD3<Double>
    
    var magneticField: SIMD3<Double>
    var magneticFieldCalibrationAccuracy: MagneticFieldCalibrationAccuracy
    
    var heading: Double
    
    init(fromData data: CMDeviceMotion){
        
        timestamp = data.date
        timeSinceBoot = data.timestamp
        
        attitude = [data.attitude.roll, data.attitude.pitch, data.attitude.yaw]
        rotationRate = [data.rotationRate.x, data.rotationRate.y, data.rotationRate.z]
        
        gravity = [data.gravity.x, data.gravity.y, data.gravity.z]
        userAcceleration = [data.userAcceleration.x, data.userAcceleration.y, data.userAcceleration.z]
        
        magneticField = [data.magneticField.field.x, data.magneticField.field.y, data.magneticField.field.z]
        magneticFieldCalibrationAccuracy = Self.calibrationAccuracy(from: data.magneticField.accuracy)
        
        heading = data.heading
    }
    
    private static func calibrationAccuracy(from accuracy: CMMagneticFieldCalibrationAccuracy) -> MagneticFieldCalibrationAccuracy {
        switch accuracy {
        case .uncalibrated:
            return .uncalibrated
        case .low:
            return .low
        case .medium:
            return .medium
        case .high:
            return .high
        @unknown default:
            fatalError("Unknown CMMagneticFieldCalibrationAccuracy case.")
        }
    }
    
}
