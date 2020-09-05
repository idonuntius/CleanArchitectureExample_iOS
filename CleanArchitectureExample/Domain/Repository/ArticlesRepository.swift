//
//  ArticlesRepository.swift
//  CleanArchitectureExample
//
//  Created by NatsukiIdota on 2020/09/06.
//  Copyright © 2020 idonuntius. All rights reserved.
//

import Combine
import Foundation

protocol ArticlesRepository {
    func fetchArticles() -> AnyPublisher<Articles, Error>
}
