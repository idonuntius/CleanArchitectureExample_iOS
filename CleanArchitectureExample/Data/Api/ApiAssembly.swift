//
//  ApiAssembly.swift
//  CleanArchitectureExample
//
//  Created by NatsukiIdota on 2020/07/26.
//  Copyright © 2020 idonuntius. All rights reserved.
//

import Foundation

import Swinject

struct ApiAssembly: Assembly {
    init() {
    }

    func assemble(container: Container) {
        container.register(ArticlesApi.self) { _ in
            ArticlesApi()
        }.inObjectScope(.container)
    }
}
