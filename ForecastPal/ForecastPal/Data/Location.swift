//
//  Location.swift
//  ForecastPal
//
//  Created by Ivaylo Kalaydzhiev on 13.11.23.
//

import Foundation

struct Location: Codable, Equatable {
    let name: String
    let latitude: Float
    let longitude: Float
}

enum Locations {
    static let sofia = Location(name: "Sofia", latitude: 42.70, longitude: 23.32)
    static let plovdiv = Location(name: "Plovdiv", latitude: 41.15, longitude: 24.75)
    static let burgas = Location(name: "Burgas", latitude: 42.51, longitude: 27.47)
}
