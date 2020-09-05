//
//  ViewModelAssembly.swift
//  CleanArchitectureExample
//
//  Created by NatsukiIdota on 2020/07/26.
//  Copyright © 2020 idonuntius. All rights reserved.
//

import Foundation

import Swinject

struct ViewModelAssembly: Assembly {
    init() {
    }

    func assemble(container: Container) {
        container.register(ArticleListViewModel.self) { resolver in
            ArticleListViewModel(fetchArticlesUseCase: resolver.resolve(FetchArticlesUseCase.self)!)
        }.inObjectScope(.container)
    }
}
