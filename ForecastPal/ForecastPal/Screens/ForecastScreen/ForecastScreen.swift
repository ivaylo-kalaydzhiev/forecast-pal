//
//  ForecastScreen.swift
//  ForecastPal
//
//  Created by Ivaylo Kalaydzhiev on 13.11.23.
//

import SwiftUI

struct ForecastScreen: View {
    @StateObject private var model = ForecastScreenViewModelViewModel()

    var body: some View {
        VStack {
            Spacer()
            LocationButton(
                sheetIsPresented: $model.sheetIsPresented,
                locationName: model.location.name
            )
            .padding()
            ForecastListView(
                forecast: model.forecast
            )
        }
        .onAppear(perform: model.loadForecast)
        .onChange(of: model.location) {
            model.loadForecast()
        }
        .sheet(isPresented: $model.sheetIsPresented) {
            LocationSelectScreen(
                isPresented: $model.sheetIsPresented,
                location: $model.location
            )
        }
    }
}

#Preview {
    ForecastScreen()
}
