//
//  MockData.swift
//  ForecastPal
//
//  Created by Ivaylo Kalaydzhiev on 13.11.23.
//

import Foundation

enum MockData {
    static let forecast = Forecast(dayForecasts: dayForecasts)
    
    static let dayForecasts = [
        DayForecast(day: "10.05.2023", hourlyForecasts: hourlyForecasts),
        DayForecast(day: "11.05.2023", hourlyForecasts: hourlyForecasts),
        DayForecast(day: "12.05.2023", hourlyForecasts: hourlyForecasts),
        DayForecast(day: "13.05.2023", hourlyForecasts: hourlyForecasts),
        DayForecast(day: "14.05.2023", hourlyForecasts: hourlyForecasts),
        DayForecast(day: "15.05.2023", hourlyForecasts: hourlyForecasts),
        DayForecast(day: "16.05.2023", hourlyForecasts: hourlyForecasts),
        DayForecast(day: "17.05.2023", hourlyForecasts: hourlyForecasts)
    ]
    
    static let hourlyForecasts = [
        hourlyForecast,
        hourlyForecast,
        hourlyForecast,
        hourlyForecast,
        hourlyForecast,
        hourlyForecast,
        hourlyForecast,
        hourlyForecast,
        hourlyForecast,
        hourlyForecast
    ]
    
    static let hourlyForecast = HourlyForecast(time: Date.now, weatherCode: 10, temperature: 23, windspeed: 11)
}
