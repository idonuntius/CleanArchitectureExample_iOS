//
//  ArticlesRepositoryImpl.swift
//  CleanArchitectureExample
//
//  Created by NatsukiIdota on 2020/09/06.
//  Copyright © 2020 idonuntius. All rights reserved.
//

import Combine

final class ArticlesRepositoryImpl: ArticlesRepository {
    private let articlesApi: ArticlesApi

    required init(articlesApi: ArticlesApi) {
        self.articlesApi = articlesApi
    }

    func fetchArticles() -> AnyPublisher<Articles, Error> {
        return articlesApi.fetch()
            .map { values -> Articles in
                return ArticlesMapper.transform(entities: values)
            }
            .eraseToAnyPublisher()
    }
}
