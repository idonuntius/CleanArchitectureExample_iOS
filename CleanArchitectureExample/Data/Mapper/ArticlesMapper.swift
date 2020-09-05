//
//  ArticlesMapper.swift
//  CleanArchitectureExample
//
//  Created by NatsukiIdota on 2020/09/06.
//  Copyright © 2020 idonuntius. All rights reserved.
//

import Foundation

struct ArticlesMapper {
    static func transform(entities: [ArticleEntity]) -> Articles {
        return Articles(
            values: entities.map { transfromToItem($0) }
        )
    }

    private static func transfromToItem(_ entity: ArticleEntity) -> Article {
        return Article(
            id: ArticleId(value: entity.id),
            title: entity.title,
            body: entity.body,
            commentsCount: entity.commentsCount,
            likesCount: entity.likesCounnt,
            url: entity.url,
            user: transformToArticleUser(entity.user),
            updateAt: ArticleDate.from(entity.updatedAt)
        )
    }

    private static func transformToArticleUser(_ entity: UserEntity) -> ArticleUser {
        return ArticleUser(
            name: entity.name,
            description: entity.description ?? "",
            imageUrl: entity.profileImageUrl
        )
    }
}
