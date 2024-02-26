package com.example.newsfeed.db

import app.cash.sqldelight.db.SqlDriver
import app.cash.sqldelight.driver.native.NativeSqliteDriver
actual class DatabaseDriverFactory() {

    actual fun createDriver(): SqlDriver =
        NativeSqliteDriver(
            schema = NewsFeedDatabase.Schema,
            name = "NewsFeedDatabase.db"
        )
}