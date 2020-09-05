//
//  ApiError.swift
//  CleanArchitectureExample
//
//  Created by NatsukiIdota on 2020/07/26.
//  Copyright © 2020 idonuntius. All rights reserved.
//

import Foundation

class ApiError: Error {
    let message: String

    init(message: String = "エラー") {
        self.message = message
    }
}
