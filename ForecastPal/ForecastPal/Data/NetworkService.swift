//
//  NetworkService.swift
//  ForecastPal
//
//  Created by Ivaylo Kalaydzhiev on 14.11.23.
//

import Foundation

enum NetworkService {
    static func makeRequest<ResponseModel: Codable>(to urlString: String) async throws -> ResponseModel? {
        guard let url = URL(string: urlString) else {
            return nil
        }

        let (data, response) = try await URLSession.shared.data(from: url)
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            return nil
        }

        return try? JSONDecoder().decode(ResponseModel.self, from: data)
    }
}
