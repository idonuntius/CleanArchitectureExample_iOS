//
//  RepositoryAssembly.swift
//  CleanArchitectureExample
//
//  Created by NatsukiIdota on 2020/07/26.
//  Copyright © 2020 idonuntius. All rights reserved.
//

import Foundation

import Swinject

struct RepositoryAssembly: Assembly {
    init() {
    }

    func assemble(container: Container) {
        container.register(ArticlesRepository.self) { resolver in
            ArticlesRepositoryImpl(articlesApi: resolver.resolve(ArticlesApi.self)!)
        }.inObjectScope(.container)
    }
}
