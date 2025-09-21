//
//  CoffeeRunTimerView.swift
//  iosApp1
//
//  Created by Satoof Haj  on 2025-09-21.
//

import SwiftUI

struct CoffeeRunTimerView: View {
    @State private var timeRemaining = 60
    @State private var timer: Timer?

    var body: some View {
        VStack {
            // Tim Hortons logo
            Image("TimLogo")
                .resizable()
                .scaledToFit()
                .frame(height: 80)
                .padding(.bottom, 10)

            Text("Coffee Run Timer")
                .font(.title)
                .padding(.bottom, 5)

            Text("Time left: \(timeRemaining) seconds")
                .font(.headline)
                .padding(.bottom, 20)

            // Reset Timer button
            Button("Reset Timer") {
                resetTimer()
            }
            .font(.headline)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color("AppBrown"))
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .onAppear {
            startTimer()
        }
        .navigationTitle("Timer")
    }

    // Start countdown
    func startTimer() {
        timer?.invalidate()
        timeRemaining = 60
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            if timeRemaining > 0 {
                timeRemaining -= 1
            }
        }
    }

    // Reset countdown
    func resetTimer() {
        startTimer()
    }
}

