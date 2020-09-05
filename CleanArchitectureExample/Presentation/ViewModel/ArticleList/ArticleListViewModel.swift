//
//  ArticleListViewModel.swift
//  CleanArchitectureExample
//
//  Created by NatsukiIdota on 2020/09/06.
//  Copyright © 2020 idonuntius. All rights reserved.
//

import Foundation
import Combine

class ArticleListViewModel: ObservableObject {
    let fetchArticlesUseCase: FetchArticlesUseCase

    @Published var articleListState: ArticleListState = ArticleListState.loading
    private var disposables = Set<AnyCancellable>()

    required init(fetchArticlesUseCase: FetchArticlesUseCase) {
        self.fetchArticlesUseCase = fetchArticlesUseCase
    }

    func fetchArticles() {
        articleListState = ArticleListState.loading
        fetchArticlesUseCase.execute()
            .receive(on: DispatchQueue.main)
            .sink(
                receiveCompletion: { [weak self] completion in
                    switch completion {
                    case .finished: break
                    case .failure(let error):
                        guard let apiError = error as? ApiError else { return }
                        self?.articleListState = ArticleListState.error(error: apiError)
                    }
                },
                receiveValue: { [weak self] value in
                    self?.articleListState = ArticleListState.normal(articles: value)
                }
            )
            .store(in: &disposables)
    }
}
