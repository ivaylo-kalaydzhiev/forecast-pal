//
//  LocationListButton.swift
//  ForecastPal
//
//  Created by Ivaylo Kalaydzhiev on 13.11.23.
//

import SwiftUI

struct LocationListButton: View {
    @State private var onAppear: Bool = false
    @Binding var isPresented: Bool
    @Binding var currentLocation: Location
    let location: Location

    var body: some View {
        Button {
            isPresented = false
            currentLocation = location
        } label: {
            Text(location.name)
                .font(.title2)
                .foregroundStyle(.white)
                .padding()
        }
        .frame(maxWidth: .infinity)
        .background(Color.blue)
        .cornerRadius(10)
        .shadow(radius: 15)
        .modifier(LocationButtonAnimation(onTapped: $onAppear))
    }
}

#Preview {
    LocationListButton(
        isPresented: .constant(true),
        currentLocation: .constant(Locations.sofia),
        location: Locations.plovdiv
    )
}
