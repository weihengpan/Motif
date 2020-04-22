//
//  MagnetometerData.swift
//  Motif
//
//  Created by Pan Weiheng on 2020/4/2.
//

import CoreMotion

struct MagnetometerData: Codable, Equatable, Hashable {
    
    var timestamp: Date
    var timeSinceBoot: TimeInterval
    var magneticField: SIMD3<Double>
    
    init(fromData data: CMMagnetometerData) {
        timestamp = data.date
        timeSinceBoot = data.timestamp
        magneticField = [data.magneticField.x, data.magneticField.y, data.magneticField.z]
    }
}
