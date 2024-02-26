package com.example.newsfeed.android

import android.app.Application
import com.example.newsfeed.android.di.databaseModule
import com.example.newsfeed.android.di.viewModelsModule
import com.example.newsfeed.di.sharedKoinModules
import org.koin.android.ext.koin.androidContext
import org.koin.core.context.startKoin

class NewsFeedApp: Application() {

    override fun onCreate() {
        super.onCreate()
        initKoin()
    }

    private fun initKoin() {
        val modules = sharedKoinModules + viewModelsModule + databaseModule

        startKoin {
            androidContext(this@NewsFeedApp)
            modules(modules)
        }
    }
}