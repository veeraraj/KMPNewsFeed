package com.example.newsfeed.android.di

import com.example.newsfeed.db.DatabaseDriverFactory
import com.example.newsfeed.db.NewsFeedDatabase
import app.cash.sqldelight.db.SqlDriver
import org.koin.android.ext.koin.androidContext
import org.koin.dsl.module

val databaseModule = module {

    single<SqlDriver> { DatabaseDriverFactory(androidContext()).createDriver() }

    single<NewsFeedDatabase> { NewsFeedDatabase(get()) }
}
