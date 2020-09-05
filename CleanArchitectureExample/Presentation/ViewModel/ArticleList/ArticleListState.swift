//
//  ArticleListState.swift
//  CleanArchitectureExample
//
//  Created by NatsukiIdota on 2020/09/06.
//  Copyright © 2020 idonuntius. All rights reserved.
//

enum ArticleListState {
    case loading
    case error(error: ApiError)
    case normal(articles: Articles)
}
