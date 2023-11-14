//
//  HourlyForecast.swift
//  ForecastPal
//
//  Created by Ivaylo Kalaydzhiev on 13.11.23.
//

import Foundation

struct HourlyForecast: Identifiable {
    let id = UUID()
    let time: Date
    let weatherCode: Int
    let temperature: Int
    let windspeed: Int
}
