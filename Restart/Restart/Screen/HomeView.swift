//
//  HomeView.swift
//  Restart
//
//  Created by Nejat Boy on 18.06.2026.
//

import SwiftUI

struct HomeView: View {

    @AppStorage("onboarding")
    var isOnboardigViewActive: Bool = false


    var body: some View {
        VStack(spacing: 20) {
            Text("Home")
                .font(.largeTitle)

            Button {
                isOnboardigViewActive = true

            } label: {
                Text("Restart")
            }

        }
    }
}

#Preview {
    HomeView()
}
