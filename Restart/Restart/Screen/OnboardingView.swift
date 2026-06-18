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
            Circle()
                .stroke(.white.opacity(0.2), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)

            Circle()
                .stroke(.white.opacity(0.2), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)

            Image("character-1")
                .resizable()
                .scaledToFit()
        }
    }
}



private struct Footer: View {

    @AppStorage("onboarding")
    var isOnboardigViewActive: Bool = true


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
                    .frame(width: 80, alignment: .center)

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
                .onTapGesture {
                    isOnboardigViewActive = false
                }

                Spacer()
            }
        }
        .frame(height: 80, alignment: .center)
        .padding()
    }
}


#Preview {
    OnboardingView()
}
