//
//  UIDevice+Model.swift
//  Motif
//
//  Created by Pan Weiheng on 2020/4/2.
//

import UIKit

extension UIDevice {
    
    static let model: String = {
        var uts = utsname()
        uname(&uts)
        return String(bytes: Data(bytes: &uts.machine, count: Int(_SYS_NAMELEN)), encoding: .ascii)!.trimmingCharacters(in: .controlCharacters)
    }()
    
}
