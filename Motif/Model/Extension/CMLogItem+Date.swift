//
//  CMLogItem+Date.swift
//  Motif
//
//  Created by Pan Weiheng on 2020/4/2.
//

import CoreMotion
import QuartzCore

extension CMLogItem {
    var date: Date {
        Date(timeIntervalSinceBoot: timestamp)
    }
}

extension Date {
    init(timeIntervalSinceBoot: TimeInterval) {
        let timeIntervalSinceBootUntilNow = CACurrentMediaTime() as TimeInterval
        let difference = timeIntervalSinceBoot - timeIntervalSinceBootUntilNow
        self.init(timeIntervalSinceNow: difference)
    }
}
