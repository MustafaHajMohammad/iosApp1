//
//  OrderView.swift
//  iosApp1
//
//  Created by Satoof Haj  on 2025-09-21.
//

//
//  OrderView.swift
//  iosApp1
//
//  Created by Satoof Haj on 2025-09-21.
//

import SwiftUI

struct OrderView: View {
    @ObservedObject var manager: OrderManager
    @State private var order = Order()   // local order form state

    var body: some View {
        VStack {
            // Tim Hortons logo
            Image("TimLogo")
                .resizable()
                .scaledToFit()
                .frame(height: 80)
                .padding(.bottom, 10)

            Form {
                Section(header: Text("New Order")) {
                    // Drink type picker
                    Picker("Drink Type", selection: $order.drinkType) {
                        Text("Coffee").tag("Coffee")
                        Text("Tea").tag("Tea")
                        Text("Latte").tag("Latte")
                    }

                    // Size picker
                    Picker("Size", selection: $order.drinkSize) {
                        Text("Small").tag("Small")
                        Text("Medium").tag("Medium")
                        Text("Large").tag("Large")
                    }

                    // Add-ons toggles
                    Section(header: Text("Add-ons")) {
                        Toggle("Black", isOn: Binding(
                            get: { order.addOns.contains("Black") },
                            set: { $0 ? order.addOns.append("Black") : order.addOns.removeAll { $0 == "Black" } }
                        ))
                        Toggle("Cream", isOn: Binding(
                            get: { order.addOns.contains("Cream") },
                            set: { $0 ? order.addOns.append("Cream") : order.addOns.removeAll { $0 == "Cream" } }
                        ))
                        Toggle("Milk", isOn: Binding(
                            get: { order.addOns.contains("Milk") },
                            set: { $0 ? order.addOns.append("Milk") : order.addOns.removeAll { $0 == "Milk" } }
                        ))
                        Toggle("Sugar", isOn: Binding(
                            get: { order.addOns.contains("Sugar") },
                            set: { $0 ? order.addOns.append("Sugar") : order.addOns.removeAll { $0 == "Sugar" } }
                        ))
                    }
                }

                // Save button
                Button(action: {
                    manager.saveOrder(order)
                    order = Order() // reset form after saving
                }) {
                    Text("Save Order")
                        .font(.headline)
                        .frame(maxWidth: .infinity) // full width
                        .padding()
                        .background(Color("AppBrown")) // theme color
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
        .navigationTitle("New Order")
    }
}

