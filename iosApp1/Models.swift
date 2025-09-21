//
//  Models.swift
//  iosApp1
//
//  Created by Satoof Haj  on 2025-09-21.
//

import Foundation

// Represents one coffee order
struct CoffeeOrder: Identifiable, Codable {
    var id = UUID()
    var drinkType: String   // Coffee, Tea, Latte
    var drinkSize: String   // Small, Medium, Large
    var addOns: [String]    // Milk, Cream, Sugar, Black
}

// Represents a team member
struct TeamMember: Identifiable, Codable {
    var id = UUID()
    var name: String
    var favoriteOrder: CoffeeOrder?
}
