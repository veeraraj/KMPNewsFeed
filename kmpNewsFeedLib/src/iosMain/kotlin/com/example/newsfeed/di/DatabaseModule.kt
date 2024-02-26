package com.example.newsfeed.di

import app.cash.sqldelight.db.SqlDriver
import com.example.newsfeed.db.DatabaseDriverFactory
import com.example.newsfeed.db.NewsFeedDatabase
import org.koin.dsl.module

val databaseModule = module {

    single<SqlDriver> { DatabaseDriverFactory().createDriver() }

    single<NewsFeedDatabase> { NewsFeedDatabase(get()) }
}