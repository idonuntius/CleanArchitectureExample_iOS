//
//  FetchArticlesUseCaseImpl.swift
//  CleanArchitectureExample
//
//  Created by NatsukiIdota on 2020/09/06.
//  Copyright © 2020 idonuntius. All rights reserved.
//

import Combine

final class FetchArticlesUseCaseImpl: FetchArticlesUseCase {
    private let articlesRepository: ArticlesRepository

    required init(articlesRepository: ArticlesRepository) {
        self.articlesRepository = articlesRepository
    }

    func execute() -> AnyPublisher<Articles, Error> {
        return articlesRepository.fetchArticles()
    }
}
