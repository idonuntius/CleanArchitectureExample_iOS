//
//  Swinject.swift
//  CleanArchitectureExample
//
//  Created by NatsukiIdota on 2020/07/26.
//  Copyright © 2020 idonuntius. All rights reserved.
//

import Foundation

import Swinject

final class Swinject {
    static var resolver: Resolver {
        return assembler.resolver
    }

    private static let assembler = Assembler([
        ApiAssembly(),
        RepositoryAssembly(),
        UseCaseAssembly(),
        ViewModelAssembly()
    ])

    private init() {
    }
}
