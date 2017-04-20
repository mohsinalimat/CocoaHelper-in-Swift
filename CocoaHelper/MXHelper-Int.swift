//
//  MXHelper-Double.swift
//  MXHelper
//
//  Created by Meniny on 2017-04-19.
//  Copyright © 2017年 Meniny. All rights reserved.
//

import Foundation

extension Int {
    /// format this number
    public func formattedString(_ fractionDigits: Int = 3) -> String {
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = fractionDigits
        formatter.maximumFractionDigits = fractionDigits
        return formatter.string(from: NSNumber(value: self))!
    }
    
    /// generate a random number
    static func random(_ around: Int = 1000) -> Int {
        return Int(arc4random()) % around
    }
    
    public func stringValue() -> String {
        return "\(self)"
    }
}
