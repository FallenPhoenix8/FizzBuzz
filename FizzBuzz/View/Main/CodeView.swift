// 
//  CodeView.swift
//  FizzBuzz
//
    

import SwiftUI

struct CodeView: View {
    let algorithm: String
    var body: some View {
        Text(algorithm)
    }
}

#Preview {
    let alg = SwiftFizzBuzzAlgModel().code
    CodeView(algorithm: alg)
}
