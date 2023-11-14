//
//  ForecastScreenViewModel.swift
//  ForecastPal
//
//  Created by Ivaylo Kalaydzhiev on 13.11.23.
//

import Foundation

final class ForecastScreenViewModelViewModel: ObservableObject {
    @Published var forecast: Forecast?
    @Published var sheetIsPresented = false
    @Published var location: Location = Locations.sofia {
        didSet {
            saveLocation()
        }
    }

    init() {
        readLocation()
    }

    private let service = WeatherService()

    @MainActor
    func loadForecast() {
        Task {
            if let forecast = try await service.fetchForecast(location: location) {
                self.forecast = forecast
            }
        }
    }

    private func saveLocation() {
        if let encodedLocation = try? JSONEncoder().encode(location) {
            UserDefaults.standard.set(encodedLocation, forKey: "location")
        }
    }

    private func readLocation() {
        guard let data = UserDefaults.standard.data(forKey: "location"),
              let savedLocation = try? JSONDecoder().decode(Location.self, from: data) else {
            location = Locations.sofia
            return
        }
        location = savedLocation
    }
}
