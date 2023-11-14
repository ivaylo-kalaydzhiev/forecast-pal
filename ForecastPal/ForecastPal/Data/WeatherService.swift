//
//  WeatherService.swift
//  ForecastPal
//
//  Created by Ivaylo Kalaydzhiev on 13.11.23.
//

import Foundation

struct WeatherService {
    let baseURL = "https://api.open-meteo.com/v1/forecast?"
    let queryParams = "&hourly=temperature_2m,weathercode,windspeed_10m"
    
    func fetchForecast(location: Location) async throws -> Forecast? {
        let urlString = "\(baseURL)latitude=\(location.latitude)&longitude=\(location.longitude)\(queryParams)"
        let response: ForecastResponseModel? = try await NetworkService.makeRequest(to: urlString)
        return response?.mappedToDataModel
    }
}
