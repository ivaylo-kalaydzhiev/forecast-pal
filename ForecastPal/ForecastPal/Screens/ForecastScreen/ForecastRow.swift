//
//  ForecastRow.swift
//  ForecastPal
//
//  Created by Ivaylo Kalaydzhiev on 13.11.23.
//

import SwiftUI

struct ForecastRow: View {
    let forecast: HourlyForecast

    var body: some View {
        VStack {
            HStack {
                Text(forecast.time.formatted(date: .omitted, time: .shortened))
                    .frame(width: 80, alignment: .trailing)
                Spacer()
                WeatherTypeCell(code: forecast.weatherCode)
                Spacer()
                Text("\(forecast.temperature)°")
                    .frame(width: 30, alignment: .leading)
                Spacer()
                WindCell(speed: forecast.windspeed)
                    .frame(width: 100, alignment: .leading)
            }
        }        
    }
}

#Preview {
    ForecastRow(forecast: MockData.hourlyForecast)
}
