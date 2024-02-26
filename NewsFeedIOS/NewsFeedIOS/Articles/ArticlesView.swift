//
//  ArticlesView.swift
//  NewsFeedIOS
//
//  Created by Veeraraj on 26/02/2024.
//  Copyright © 2024 orgName. All rights reserved.
//

import SwiftUI

struct ArticlesView: View {

    @ObservedObject private(set) var viewModel: ArticlesViewModelWrapper

    var body: some View {
        VStack {
            AppBarView()

            if viewModel.articlesState.loading {
                LoadingView()
            }

            if let error = viewModel.articlesState.error {
                ErrorMessageView(message: error)
            }

            if(!viewModel.articlesState.articles.isEmpty) {
                ScrollView {
                    LazyVStack(spacing: 10) {
                        ForEach(viewModel.articlesState.articles, id: \.self) { article in
                            ArticleItemView(article: article)
                        }
                    }
                }
            }

        }.onAppear{
            self.viewModel.startObserving()
        }.refreshable {
            viewModel.articlesViewModel.getArticles(forceFetch: true)
        }
    }
}
