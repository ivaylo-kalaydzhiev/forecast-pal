//
//  LocationButton.swift
//  ForecastPal
//
//  Created by Ivaylo Kalaydzhiev on 13.11.23.
//

import SwiftUI

struct LocationButton: View {
    @Binding var sheetIsPresented: Bool
    let locationName: String

    var body: some View {
        Button {
            sheetIsPresented.toggle()
        } label: {
            Text(locationName)
                .font(.title2)
                .foregroundStyle(.white)
                .padding()
        }
        .frame(maxWidth: .infinity)
        .background(Color.blue)
        .cornerRadius(10)
        .shadow(radius: 15)
    }
}

#Preview {
    LocationButton(
        sheetIsPresented: .constant(true),
        locationName: Locations.sofia.name
    )
}
