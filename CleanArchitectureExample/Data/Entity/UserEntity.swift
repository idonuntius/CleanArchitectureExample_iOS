//
//  UserEntity.swift
//  CleanArchitectureExample
//
//  Created by NatsukiIdota on 2020/07/26.
//  Copyright © 2020 idonuntius. All rights reserved.
//

import Foundation

struct UserEntity: Codable {
    let description: String?
    let name: String
    let profileImageUrl: String

    private enum CodingKeys: String, CodingKey {
        case description = "description"
        case name = "name"
        case profileImageUrl = "profile_image_url"
    }
}
