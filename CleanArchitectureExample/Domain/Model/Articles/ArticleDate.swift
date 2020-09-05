//
//  ArticleDate.swift
//  CleanArchitectureExample
//
//  Created by NatsukiIdota on 2020/09/06.
//  Copyright © 2020 idonuntius. All rights reserved.
//

import Foundation

struct ArticleDate {
    let value: Date?

    static func from(_ dateString: String) -> ArticleDate {
        let format = "yyyy/MM/dd HH::mm::ss"
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .gregorian)
        formatter.dateFormat = format
        return ArticleDate(value: formatter.date(from: dateString))
    }
}
