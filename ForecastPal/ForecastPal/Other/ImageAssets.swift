//
//  ImageAssets.swift
//  ForecastPal
//
//  Created by Ivaylo Kalaydzhiev on 14.11.23.
//

import SwiftUI

extension Image {
    enum App {
        static func weatherImage(_ code: Int) -> Image {
            switch code {
            case 0:
                // Clear sky
                return Image(systemName: "sun.max")
            case 1, 2, 3:
                // Mainly clear, partly cloudy, and overcast
                return Image(systemName: "cloud")
            case 45, 48:
                // Fog and depositing rime fog
                return Image(systemName: "cloud.fog")
            case 51, 53, 55, 56, 57:
                // Drizzle: Light, moderate, and dense intensity
                return Image(systemName: "cloud.drizzle")
            case 61, 63, 65, 66, 67:
                // Rain: Slight, moderate and heavy intensity
                return Image(systemName: "cloud.rain")
            case 71, 73, 75, 77:
                // Snow fall: Slight, moderate, and heavy intensity
                return Image(systemName: "cloud.snow")
            case 80, 81, 82:
                // Rain showers: Slight, moderate, and violent
                return Image(systemName: "cloud.heavyrain")
            case 85, 86:
                // Snow showers slight and heavy
                return Image(systemName: "cloud.snow")
            case 95, 96, 99:
                // Thunderstorm: Slight or moderate
                return Image(systemName: "cloud.bolt.rain")
            default:
                return Image(systemName: "sun.max")
            }
        }
    }
}
