//
//  DataStyle.swift
//  ForecastPal
//
//  Created by Ivaylo Kalaydzhiev on 14.11.23.
//

import Foundation

enum DateStyle {
    static func date(from string: String) -> Date {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm"

        if let date = formatter.date(from: string) {
            return date
        } else {
            return Date.now
        }
    }
}
