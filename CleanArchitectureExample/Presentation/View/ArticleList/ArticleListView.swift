//
//  ArticleListView.swift
//  CleanArchitectureExample
//
//  Created by NatsukiIdota on 2020/09/06.
//  Copyright © 2020 idonuntius. All rights reserved.
//

import Combine
import SwiftUI

struct ArticleListView: View {
    @ObservedObject var articleListViewModel: ArticleListViewModel

    init() {
        articleListViewModel = Swinject.resolver.resolve(ArticleListViewModel.self)!
        articleListViewModel.fetchArticles()
    }

    var body: some View {
        NavigationView {
            mainView()
            .navigationBarTitle(Text("アイテムリスト"))
        }
    }

    private func mainView() -> some View {
        switch articleListViewModel.articleListState {
        case .loading:
            return AnyView(LoadingView())
        case .normal(let articles):
            return AnyView(List {
                ForEach(articles.values, id: \.id.value) { article in
                    NavigationLink(destination: ArticleDetailView(article: article)) {
                        VStack {
                            Text(article.title)
                        }
                    }
                }
            })
        case .error(let error):
            return AnyView(ErrorView(error: error))
        }
    }
}

struct ArticleListView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleListView()
    }
}
