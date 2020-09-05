//
//  Article.swift
//  CleanArchitectureExample
//
//  Created by NatsukiIdota on 2020/09/06.
//  Copyright © 2020 idonuntius. All rights reserved.
//

struct Article {
    let id: ArticleId
    let title: String
    let body: String
    let commentsCount: Int
    let likesCount: Int
    let url: String
    let user: ArticleUser
    let updateAt: ArticleDate
}
