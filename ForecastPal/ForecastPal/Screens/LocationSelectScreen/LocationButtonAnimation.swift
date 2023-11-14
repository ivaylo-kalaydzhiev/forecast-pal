//
//  LocationButtonAnimation.swift
//  ForecastPal
//
//  Created by Ivaylo Kalaydzhiev on 14.11.23.
//

import SwiftUI

struct LocationButtonAnimation: ViewModifier {
    @Binding var onTapped: Bool
    @State private var dragOffset: CGSize = .zero

    func body(content: Content) -> some View {
        content
            .scaleEffect(onTapped ? 0.9 : 1)
            .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
            .gesture(
                DragGesture(minimumDistance: 0)
                    .onChanged { value in
                        onTapped = true
                        dragOffset = value.translation
                    }
                    .onEnded { _ in
                        onTapped = false
                        dragOffset = .zero
                    }
            )
    }
}
