package com.example.newsfeed.articles.di

import com.example.newsfeed.articles.ArticlesDataSource
import com.example.newsfeed.articles.ArticlesRepository
import com.example.newsfeed.articles.ArticlesService
import com.example.newsfeed.articles.ArticlesUseCase
import com.example.newsfeed.articles.ArticlesViewModel
import org.koin.dsl.module

val articlesModule = module {

    single<ArticlesService> { ArticlesService(get()) }
    single<ArticlesUseCase> { ArticlesUseCase(get()) }
    single<ArticlesViewModel> { ArticlesViewModel(get()) }
    single<ArticlesDataSource> { ArticlesDataSource(get()) }
    single<ArticlesRepository> { ArticlesRepository(get(), get()) }
}