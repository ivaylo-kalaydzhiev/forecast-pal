//
//  ForecastListView.swift
//  ForecastPal
//
//  Created by Ivaylo Kalaydzhiev on 13.11.23.
//

import SwiftUI

struct ForecastListView: View {
    let forecast: Forecast?

    var body: some View {
        List {
            ForEach(forecast?.dayForecasts ?? []) { dayForecast in
                Section(header: ForecastSectionHeader(title: dayForecast.day)) {
                    ForEach(dayForecast.hourlyForecasts) { forecast in
                        ForecastRow(forecast: forecast)
                            .listRowBackground(Color.blue.opacity(0.5))
                    }
                }
            }
        }
        .scrollContentBackground(.hidden)
    }
}

#Preview {
    ForecastListView(forecast: MockData.forecast)
}
