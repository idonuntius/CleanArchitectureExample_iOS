//
//  ArticleEntity.swift
//  CleanArchitectureExample
//
//  Created by NatsukiIdota on 2020/09/06.
//  Copyright © 2020 idonuntius. All rights reserved.
//

import Foundation

struct ArticleEntity: Codable {
    let id: String
    let title: String
    let body: String
    let commentsCount: Int
    let likesCounnt: Int
    let url: String
    let updatedAt: String
    let user: UserEntity

    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "title"
        case body = "body"
        case commentsCount = "comments_count"
        case likesCounnt = "likes_count"
        case url = "url"
        case updatedAt = "updated_at"
        case user = "user"
    }
}
