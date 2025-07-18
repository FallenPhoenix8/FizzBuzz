//
//  FizzBuzzView.swift
//  FizzBuzz
//

import SwiftUI

struct FizzBuzzView: View {
    let MAX = 100
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ..< MAX, id: \.self) { num in
                    let sequenceItem: String = FizzBuzzSequence.item(from: num + 1)

                    LargeTextView(text: sequenceItem)
                        .padding()
                }
            }
        }
    }
}

#Preview {
    FizzBuzzView()
}
