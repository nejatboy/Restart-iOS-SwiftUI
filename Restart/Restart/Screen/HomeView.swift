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
            Spacer()

            ZStack {
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)

                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
            }

            Text("The time thad leads to mastery is depent on the insensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding()

            Spacer()


            Button {
                isOnboardigViewActive = true

            } label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)

                Text("Restart")
                    .font(.system(.title3))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }
    }
}

#Preview {
    HomeView()
}
