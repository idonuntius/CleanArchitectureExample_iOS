//
//  ArticleDetailView.swift
//  CleanArchitectureExample
//
//  Created by NatsukiIdota on 2020/09/06.
//  Copyright © 2020 idonuntius. All rights reserved.
//

import SwiftUI

struct ArticleDetailView: View {
    let article: Article

    var body: some View {
        NavigationView {
            ScrollView {
                Text(article.body)
            }
            .navigationBarTitle(Text(article.title), displayMode: .inline)
        }
    }
}

struct ArticleDetailView_Previews: PreviewProvider {
    static var article = Article(
        id: ArticleId(value: "id"),
        title: "title",
        body: "body",
        commentsCount: 1,
        likesCount: 1,
        url: "url",
        user: ArticleUser(
            name: "name",
            description: "description",
            imageUrl: "imageUrl"
        ),
        updateAt: ArticleDate(value: Date())
    )

    static var previews: some View {
        ArticleDetailView(article: article)
    }
}
