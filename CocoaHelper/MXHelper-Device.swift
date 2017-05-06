//
//  MXHelper-Device.swift
//  Pods
//
//  Created by Meniny on 2017-05-06.
//
//

import Foundation

public extension UIDevice {
    public var alphanumericSystemVersion: String? {
        return try? sysctlString(levels: CTL_KERN, KERN_OSVERSION)
    }
}
