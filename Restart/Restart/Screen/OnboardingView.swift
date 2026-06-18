//
//  OnboardingView.swift
//  Restart
//
//  Created by Nejat Boy on 18.06.2026.
//

import SwiftUI

struct OnboardingView: View {

    @AppStorage("onboarding")
    var isOnboardigViewActive: Bool = true


    var body: some View {
        VStack(spacing: 20) {
            Text("Onboarding")
                .font(.largeTitle)

            Button {
                isOnboardigViewActive = false
            } label: {
                Text("Start")
            }

        }
    }
}

#Preview {
    OnboardingView()
}
