//
//  Order.swift
//  iosApp1
//
//  Created by Satoof Haj  on 2025-09-21.

import Foundation

/// Order model for drinks
struct Order: Identifiable, Codable {
    var id = UUID()                     // Unique ID for each order
    var drinkType: String = "Coffee"    // Default selection
    var drinkSize: String = "Small"     // Default size
    var addOns: [String] = []           // Add-ons like Milk, Cream, Sugar, etc.
}
