//
//  ContentView.swift
//  Restart
//
//  Created by Nejat Boy on 17.06.2026.
//

import SwiftUI
import SwiftData

struct ContentView: View {

    @AppStorage("onboarding")
    var isOnboardigViewActive: Bool = true

    var body: some View {
        if isOnboardigViewActive {
            OnboardingView()

        } else {
            HomeView()
        }
    }
}
