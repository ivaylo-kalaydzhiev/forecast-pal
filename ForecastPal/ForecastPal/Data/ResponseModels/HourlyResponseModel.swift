//
//  HourlyResponseModel.swift
//  ForecastPal
//
//  Created by Ivaylo Kalaydzhiev on 14.11.23.
//

import Foundation

struct HourlyResponseModel: Codable {
    var time: [String]
    var temperature2m: [Float]
    var weatherCode: [Int]
    var windspeed10m: [Float]

    private enum CodingKeys: String, CodingKey {
        case time
        case temperature2m = "temperature_2m"
        case weatherCode = "weathercode"
        case windspeed10m = "windspeed_10m"
    }
}
