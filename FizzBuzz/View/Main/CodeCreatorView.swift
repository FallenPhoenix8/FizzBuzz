//
//  CodeView.swift
//  FizzBuzz
//
    

import SwiftUI

struct CodeCreatorView: View {
    @Bindable var algorithmVM: FizzBuzzAlgViewModel
    var body: some View {
        NavigationStack {
            List(algorithmVM.algorithms) { algorithm in
                NavigationLink(algorithm.programmingLanguage) {
                    CodeView(code: algorithm.code)
                }
            }
            .navigationTitle(Text("Fizz Buzz "))
        }
        
    }
}

#Preview {
    CodeCreatorView(algorithmVM: FizzBuzzAlgViewModel())
}
