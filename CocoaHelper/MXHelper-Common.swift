//
//  MXHelper.swift
//  MXHelper
//
//  Created by Meniny on 2017-04-19.
//  Copyright © 2017年 Meniny. All rights reserved.
//

#if os(OSX)
    import Cocoa
    
    /// notify at NotificationCenter
    public func notify(title: String, informative: String? = nil, image: NSImage? = nil, sound: String? = NSUserNotificationDefaultSoundName, delegate: NSUserNotificationCenterDelegate? = nil) {
        
        let notification = NSUserNotification()
        let notificationCenter = NSUserNotificationCenter.default
        notificationCenter.delegate = delegate
        notification.title = title
        notification.informativeText = informative
        notification.contentImage = image
        notification.soundName = sound;
        notificationCenter.scheduleNotification(notification)
    }
#else
    import Foundation
    import UIKit
#endif

public func Localized(_ key: String) -> String {
    return Bundle.main.localizedString(forKey: key, value: nil, table: nil)
}
