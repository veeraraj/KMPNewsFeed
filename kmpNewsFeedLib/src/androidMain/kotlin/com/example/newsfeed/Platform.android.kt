package com.example.newsfeed

import android.os.Build
import android.util.Log

actual class Platform() {
    actual val osName: String
        get() = "Android"
    actual val osVersion: String
        get() = "${ Build.VERSION.SDK_INT }"
    actual val deviceModel: String
        get() = "${ Build.MANUFACTURER } ${ Build.MODEL }"

    actual fun logSystemInfo() {
        Log.d(
            "News Feed App",
            "($osName, $osVersion, $deviceModel)"
        )
    }
}
