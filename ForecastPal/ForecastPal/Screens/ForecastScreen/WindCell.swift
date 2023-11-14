//
//  WindCell.swift
//  ForecastPal
//
//  Created by Ivaylo Kalaydzhiev on 14.11.23.
//

import SwiftUI

struct WindCell: View {
    let speed: Int

    var body: some View {
        HStack {
            Image(systemName: "wind")
            Text("\(speed) KM/H")
        }
    }
}

#Preview {
    WindCell(speed: 10)
}
