//
//  MXHelper-String.swift
//  MXHelper
//
//  Created by Meniny on 2017-04-19.
//  Copyright © 2017年 Meniny. All rights reserved.
//

import Foundation

extension String {
    
    public var localized: String {
        get {
            return Bundle.main.localizedString(forKey: self, value: nil, table: nil)
        }
    }
    
    public func substring(pattern: String, options: NSRegularExpression.Options = NSRegularExpression.Options.caseInsensitive) -> String {
        if let regex = try? NSRegularExpression(pattern: pattern, options: options) {
            if let match = regex.firstMatch(in: self, options: .reportProgress, range: NSMakeRange(0, self.characters.count)) {
                return (self as NSString).substring(with: match.range)
            }
        }
        return ""
    }
    
    public func substring(from: Int) -> String {
        return (self as NSString).substring(from: from)
    }
    
    public func substring(to: Int) -> String {
        return (self as NSString).substring(to: to)
    }
}
