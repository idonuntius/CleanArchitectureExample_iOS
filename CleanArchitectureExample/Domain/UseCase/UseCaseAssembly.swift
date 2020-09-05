//
//  UseCaseAssembly.swift
//  CleanArchitectureExample
//
//  Created by NatsukiIdota on 2020/07/26.
//  Copyright © 2020 idonuntius. All rights reserved.
//

import Foundation

import Swinject

struct UseCaseAssembly: Assembly {
    init() {
    }

    func assemble(container: Container) {
        container.register(FetchArticlesUseCase.self) { resolver in
            FetchArticlesUseCaseImpl(articlesRepository: resolver.resolve(ArticlesRepository.self)!)
        }.inObjectScope(.container)
    }
}
