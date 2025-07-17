//
//  MainView.swift
//  FizzBuzz
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Tab("Fizz Buzz", systemImage: "bubbles.and.sparkles") {
                Text("FizzBuzzView")
            }

            Tab("Code", systemImage: "note.text") {
                Text("CodeView")
            }

            Tab("About", systemImage: "bubble") {
                AboutView()
            }
        }
    }
}

#Preview {
    MainView()
}
