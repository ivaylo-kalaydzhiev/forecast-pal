//
//  DayForecast.swift
//  ForecastPal
//
//  Created by Ivaylo Kalaydzhiev on 13.11.23.
//

import Foundation

struct DayForecast: Identifiable {
    let id = UUID()
    let day: String
    let hourlyForecasts: [HourlyForecast]
}
