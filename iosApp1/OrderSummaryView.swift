//
//  OrderSummaryView.swift
//  iosApp1
//
//  Created by Satoof Haj  on 2025-09-21.
//


import SwiftUI

struct OrderSummaryView: View {
    let order: Order

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("\(order.drinkSize) \(order.drinkType)")
                .font(.headline)

            if !order.addOns.isEmpty {
                Text("Add-ons: \(order.addOns.joined(separator: ", "))")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
        .padding(8)
    }
}
