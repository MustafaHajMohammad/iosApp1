//
//  ContentView.swift
//  iosApp1
//
//  Created by Satoof Haj  on 2025-09-21.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var manager = OrderManager()

    var body: some View {
        TabView {
            // New Order Tab
            NavigationView {
                OrderView(manager: manager)
            }
            .tabItem {
                Image(systemName: "cup.and.saucer.fill")
                Text("Order")
            }

            // Saved Orders Tab
            NavigationView {
                SavedOrdersView(manager: manager)
            }
            .tabItem {
                Image(systemName: "list.bullet.rectangle")
                Text("Saved")
            }

            // Timer Tab
            NavigationView {
                CoffeeRunTimerView()
            }
            .tabItem {
                Image(systemName: "timer")
                Text("Timer")
            }
        }
    }
}

#Preview {
    ContentView()
}

