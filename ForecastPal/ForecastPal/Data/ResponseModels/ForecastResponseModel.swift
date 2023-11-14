//
//  ForecastResponseModel.swift
//  ForecastPal
//
//  Created by Ivaylo Kalaydzhiev on 13.11.23.
//

import Foundation

struct ForecastResponseModel: Codable {
    let hourly: HourlyResponseModel
}

extension ForecastResponseModel {
    var mappedToDataModel: Forecast {
        Forecast(dayForecasts: mappedDaily)
    }
}

private extension ForecastResponseModel {
    var groupedHourly: [(String, Float, Int, Float)] {
        var grouped: [(String, Float, Int, Float)] = []
        for index in 0..<168 {
            grouped.append((
                hourly.time[index],
                hourly.temperature2m[index],
                hourly.weatherCode[index],
                hourly.windspeed10m[index]
            ))
        }
        return grouped
    }

    var mappedHourly: [HourlyForecast] {
        var mapped: [HourlyForecast] = []
        for (time, temp, code, wind) in groupedHourly {
            mapped.append(
                HourlyForecast(
                    time: DateStyle.date(from: time),
                    weatherCode: code,
                    temperature: Int(temp),
                    windspeed: Int(wind)
                )
            )
        }
        return mapped
    }

    var mappedDaily: [DayForecast] {
        var mapped: [DayForecast] = []
        var mappedHourlyCopy = mappedHourly
        for _ in 0..<7 {
            let dayString = mappedHourlyCopy[0].time.formatted(date: .abbreviated, time: .omitted)
            var dayHourlyForecasts: [HourlyForecast] = []
            for _ in 0..<24 {
                dayHourlyForecasts.append(mappedHourlyCopy[0])
                mappedHourlyCopy.remove(at: 0)
            }
            mapped.append(DayForecast(day: dayString, hourlyForecasts: dayHourlyForecasts))
        }
        return mapped
    }
}
