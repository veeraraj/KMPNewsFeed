package com.example.newsfeed

import platform.Foundation.NSLog
import platform.UIKit.UIDevice

actual class Platform() {
    actual val osName: String
        get() = UIDevice.currentDevice.systemName
    actual val osVersion: String
        get() = UIDevice.currentDevice.systemVersion
    actual val deviceModel: String
        get() = UIDevice.currentDevice.model

    actual fun logSystemInfo() {
        NSLog(
            "News Feed App ($osName, $osVersion, $deviceModel)"
        )
    }
}