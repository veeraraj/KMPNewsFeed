package com.example.newsfeed.di

import com.example.newsfeed.articles.di.articlesModule

val sharedKoinModules = listOf(
    articlesModule,
    networkModule
)