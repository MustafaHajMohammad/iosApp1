//
//  OrderManager.swift
//  iosApp1
//
//  Created by Satoof Haj  on 2025-09-21.

import Foundation

/// Manages a list of orders
class OrderManager: ObservableObject {
    @Published var orders: [Order] = []   // Keeps track of saved orders
    
    /// Save a new order
    func saveOrder(_ order: Order) {
        orders.append(order)
    }
    
    /// Remove an order by ID
    func removeOrder(_ order: Order) {
        orders.removeAll { $0.id == order.id }
    }
    
    /// Clear all saved orders
    func clearOrders() {
        orders.removeAll()
    }
}
