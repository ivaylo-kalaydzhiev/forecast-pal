//
//  ForecastSectionHeader.swift
//  ForecastPal
//
//  Created by Ivaylo Kalaydzhiev on 13.11.23.
//

import SwiftUI

struct ForecastSectionHeader: View {
    let title: String

    var body: some View {
        Text(title)
            .font(.callout)
    }
}

#Preview {
    ForecastSectionHeader(title: "10.09.2023")
}
