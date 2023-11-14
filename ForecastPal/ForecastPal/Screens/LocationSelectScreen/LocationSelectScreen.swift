//
//  LocationSelectScreen.swift
//  ForecastPal
//
//  Created by Ivaylo Kalaydzhiev on 13.11.23.
//

import SwiftUI

struct LocationSelectScreen: View {
    @Binding var isPresented: Bool
    @Binding var location: Location

    var body: some View {
        Spacer()
        VStack {
            LocationListButton(
                isPresented: $isPresented,
                currentLocation: $location,
                location: Locations.sofia
            )
            LocationListButton(
                isPresented: $isPresented,
                currentLocation: $location,
                location: Locations.plovdiv
            )
            LocationListButton(
                isPresented: $isPresented,
                currentLocation: $location,
                location: Locations.burgas
            )
        }
        .padding(.horizontal, 50)
        Spacer()
    }
}

#Preview {
    LocationSelectScreen(
        isPresented: .constant(true),
        location: .constant(Locations.sofia)
    )
}
