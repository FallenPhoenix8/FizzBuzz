//
//  LargeTextView.swift
//  FizzBuzz
//

import SwiftUI

struct LargeTextView: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.semibold)
    }
}

#Preview {
    LargeTextView(text: "Some text")
}
