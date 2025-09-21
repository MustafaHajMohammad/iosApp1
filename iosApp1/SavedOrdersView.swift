//
//  SavedOrdersView.swift
//  iosApp1
//
//  Created by Satoof Haj  on 2025-09-21.
//

import SwiftUI

struct SavedOrdersView: View {
    @ObservedObject var manager: OrderManager

    var body: some View {
        VStack {
            // Tim Hortons logo
            Image("TimLogo")
                .resizable()
                .scaledToFit()
                .frame(height: 80)
                .padding(.bottom, 10)

            if manager.orders.isEmpty {
                Text("No saved orders yet")
                    .foregroundColor(.gray)
                    .padding()
            } else {
                List(manager.orders) { order in
                    OrderSummaryView(order: order)
                }
            }

            // Repeat Last Order Button
            Button("Repeat Last Order") {
                if let last = manager.orders.last {
                    manager.saveOrder(last)
                }
            }
            .font(.headline)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color("AppBrown"))
            .foregroundColor(.white)
            .cornerRadius(10)

            // Quick Order Button
            Button("Quick Order") {
                print("Quick Order tapped")
            }
            .font(.headline)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color("AppBrown"))
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .navigationTitle("Saved Orders")
    }
}

