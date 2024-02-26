//
//  ArticleItemView.swift
//  NewsFeedIOS
//
//  Created by Veeraraj on 26/02/2024.
//  Copyright © 2024 orgName. All rights reserved.
//

import SwiftUI
import kmpNewsFeedLib

struct ArticleItemView: View {
    var article: Article

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            AsyncImage(url: URL(string: article.imageUrl)) { phase in
                if phase.image != nil {
                    phase.image!
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                } else if phase.error != nil {
                    Text("Image Load Error")
                } else {
                    LoadingView()
                }
            }
            Text(article.title)
                .font(.title)
                .fontWeight(.bold)
            Text(article.desc)
            Text(article.date).frame(maxWidth: .infinity, alignment: .trailing).foregroundStyle(.gray)
        }
        .padding(16)
    }
}

#Preview {
    ArticleItemView(article:
                        Article(
                            title: "",
                            desc: "",
                            date: "",
                            imageUrl: ""
                        )
    )
}
