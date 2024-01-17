//
//  ContentView.swift
//  ChessClock
//
//  Created by Emin Çelikkan on 13.01.2024.
//

import SwiftUI

struct ClockView: View {
    @State private var firstPlayerRemainingTime = 10
    @State private var secondPlayerRemainingTime = 0
    @State private var firstTimer: Timer?
    @State private var secondTimer: Timer?
    var body: some View {
        VStack {
            Spacer()
            Text(
                "First Player Timer is : \(formatTime(firstPlayerRemainingTime))"
            )
                .foregroundStyle(.black)
                .font(.title)
                .bold()
            Divider()
            Spacer()
            Text("Second Player Timer is : \(formatTime(secondPlayerRemainingTime))")
                .scenePadding()

            Button("Start Timer") {
                startTimer()
            }
            .padding()
            Button("Stop Timer") {
                stopTimer()
            }
        }
    }


    private func stopTimer() {
        firstTimer?.invalidate()
    }

    private func startTimer() {
        if firstPlayerRemainingTime > 0 {
            firstTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
                firstPlayerRemainingTime += -1
                // You can add additional logic here to handle timer events
            }
        } else {
            print("Something happened.")
        }
    }

    private func formatTime(_ seconds: Int) -> String {
        let minutes = seconds / 60
        let remainingSeconds = seconds % 60
        return String(format: "%02d:%02d", minutes, remainingSeconds)
    }
}

#Preview {
    ClockView()
}
