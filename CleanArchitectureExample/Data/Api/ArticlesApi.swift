//
//  ArticlesApi.swift
//  CleanArchitectureExample
//
//  Created by NatsukiIdota on 2020/09/06.
//  Copyright © 2020 idonuntius. All rights reserved.
//

import Combine
import Foundation

final class ArticlesApi {
    func fetch() -> AnyPublisher<[ArticleEntity], Error> {
        let result = URLSession.shared.dataTaskPublisher(for: urlRequest())
            .tryMap({ data, response -> Data in
                guard let httpResponse = response as? HTTPURLResponse else {
                    throw ApiError(message: "見つかりませんでした。")
                }
                if (200..<300).contains(httpResponse.statusCode) == false {
                    throw ApiError(message: "失敗しました。")
                }
                return data
            })
            .decode(type: [ArticleEntity].self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
        return result
    }

    private func urlRequest() -> URLRequest {
        let url = URL(string: ApiConstants.itemsUrl)!
        let headers = ["Authorization": "Bearer \(ApiConstants.accessToken)"]
        var request = URLRequest(url: url)
        request.allHTTPHeaderFields = headers
        return request
    }
}
