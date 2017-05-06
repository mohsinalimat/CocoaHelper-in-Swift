//
//  MXHelper-App.swift
//  Pods
//
//  Created by Meniny on 2017-05-06.
//
//

import Foundation

public struct App {
    
    /// Info.plist as a dictionary objec
    static var infoDictionary: [String: Any]? {
        return Bundle.main.infoDictionary
    }
    
    /// Bundle name string
    static var bundleName: String? {
        get {
            if let info = App.infoDictionary {
                if let n = info["CFBundleName"] {
                    return n as? String
                }
            }
            return nil
        }
    }
    
    /// Version string without build number
    static var version: String? {
        get {
            if let info = App.infoDictionary {
                if let v = info["CFBundleShortVersionString"] {
                    return v as? String
                }
            }
            return nil
        }
    }
    
    /// Build number string
    static var build: String? {
        get {
            if let info = App.infoDictionary {
                if let b = info["CFBundleVersion"] {
                    return b as? String
                }
            }
            return nil
        }
    }
    
    /// Version string with build number
    static var fullVersion: String? {
        get {
            if let v = App.version, let b = App.build {
                return "\(v).\(b)"
            }
            return nil
        }
    }
}
