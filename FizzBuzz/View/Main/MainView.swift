//
//  MainView.swift
//  FizzBuzz
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Tab("Fizz Buzz", systemImage: "bubbles.and.sparkles") {
                FizzBuzzView()
            }

            Tab("Code", systemImage: "note.text") {
                CodeCreatorView(algorithmVM: FizzBuzzAlgViewModel())
            }

            Tab("About", systemImage: "bubble") {
                AboutView()
            }
        }
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.configureWithTransparentBackground()

            let blurEffect = UIBlurEffect(style: .systemUltraThinMaterial)
            let blurView = UIVisualEffectView(effect: blurEffect)
            blurView.alpha = 0.5

            // Convert to UIColor
            appearance.backgroundColor = UIColor.clear
            appearance.backgroundEffect = blurEffect

            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}

#Preview {
    MainView()
}
