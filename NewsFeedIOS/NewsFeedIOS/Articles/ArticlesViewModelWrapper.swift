//
//  ArticlesViewModelWrapper.swift
//  NewsFeedIOS
//
//  Created by Veeraraj on 26/02/2024.
//  Copyright © 2024 orgName. All rights reserved.
//

import Foundation
import SwiftUI
import kmpNewsFeedLib


@MainActor
class ArticlesViewModelWrapper: ObservableObject {
    let articlesViewModel: ArticlesViewModel


    init() {
        articlesViewModel = ArticlesInjector().articlesViewModel
        articlesState = articlesViewModel.articlesState.value
    }

    @Published var articlesState: ArticlesState

    func startObserving() {
        Task {
            for await articlesState in articlesViewModel.articlesState {
                self.articlesState = articlesState
            }
        }
    }
}
