//
//  AboutView.swift
//  FizzBuzz
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            BackgroundImageView()

            Text("""
            Fizz buzz is a group word game for children to teach them about division. Players take turns to count incrementally, replacing any number divisible by three with the word "fizz", and any number divisible by five with the word "buzz", and any number divisible by both three and five with the word "fizzbuzz".

            Fizz buzz (often spelled FizzBuzz in this context) has been used as an interview screening device for computer programmers. Writing a program to output the first 100 FizzBuzz numbers is a relatively trivial problem requiring little more than a loop and conditional statements in any popular language, and is thus a quick way to weed out applicants with absolutely no programming experience.
            """)
            .font(.title)
            .fontWeight(.semibold)
            .multilineTextAlignment(.leading)
            .minimumScaleFactor(0.5)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(Material.ultraThickMaterial.opacity(0.8))
            )
            .padding()
        }
    }
}

#Preview {
    AboutView()
}
