//
//  OnboardingView.swift
//  Restart
//
//  Created by Nejat Boy on 18.06.2026.
//

import SwiftUI

struct OnboardingView: View {


    var body: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)

            VStack(alignment: .center, spacing: 20) {
                Spacer()
                Header()
                Center()
                Spacer()
                Footer()
            }
        }
    }
}



private struct Header: View {


    var body: some View {
        VStack {
            Text("Share")
                .font(.system(size: 60))
                .fontWeight(.heavy)
                .foregroundStyle(.white)

            Text("It's not how much we give but how much we put into giving.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 10)
        }
    }
}



private struct Center: View {


    var body: some View {
        ZStack {
            CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)

            Image("character-1")
                .resizable()
                .scaledToFit()
        }
    }
}



private struct Footer: View {

    @AppStorage("onboarding")
    var isOnboardigViewActive: Bool = true

    @State
    private var buttonWidth: Double = UIScreen.main.bounds.width - 80

    @State
    private var buttonOffset: CGFloat = 0


    var body: some View {
        ZStack {
            Capsule()
                .fill(.white.opacity(0.2))

            Capsule()
                .fill(.white.opacity(0.2))
                .padding(8)

            Text("Get Started")
                .font(.system(.title3))
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .offset(x: 20)

            HStack {
                Capsule()
                    .fill(.colorRed)
                    .frame(width: buttonOffset + 80, alignment: .center)

                Spacer()
            }

            HStack {
                ZStack {
                    Circle()
                        .fill(.colorRed)

                    Circle()
                        .fill(.black.opacity(0.15))
                        .padding(8)

                    Image(systemName: "chevron.right.2")
                        .font(.system(size: 24, weight: .black))
                }
                .foregroundStyle(.white)
                .frame(width: 80, height: 80, alignment: .center)
                .offset(x: buttonOffset)
                .gesture(
                    DragGesture()
                        .onChanged { gesture in
                            if gesture.translation.width > 0 && buttonOffset <= buttonWidth - 80 {
                                buttonOffset = gesture.translation.width
                            }
                        }
                        .onEnded { _ in
                            if buttonOffset > buttonWidth / 2 {
                                buttonOffset = buttonWidth - 80
                                isOnboardigViewActive = false
                            } else {
                                buttonOffset = 0
                            }
                        }
                )

                Spacer()
            }
        }
        .frame(width: buttonWidth, height: 80, alignment: .center)
        .padding()
    }
}


#Preview {
    OnboardingView()
}
