//
//  FetchArticlesUseCase.swift
//  CleanArchitectureExample
//
//  Created by NatsukiIdota on 2020/09/06.
//  Copyright © 2020 idonuntius. All rights reserved.
//

import Combine

protocol FetchArticlesUseCase {
    func execute() -> AnyPublisher<Articles, Error>
}
