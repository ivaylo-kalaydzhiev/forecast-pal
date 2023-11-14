//
//  WeatherTypeCell.swift
//  ForecastPal
//
//  Created by Ivaylo Kalaydzhiev on 14.11.23.
//

import SwiftUI

struct WeatherTypeCell: View {
    let code: Int

    var body: some View {
        Image.App.weatherImage(code)
    }
}

#Preview {
    WeatherTypeCell(code: 1)
}
