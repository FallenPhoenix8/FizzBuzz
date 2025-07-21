// 
//  CodeView.swift
//  FizzBuzz
//
    

import SwiftUI
import UniformTypeIdentifiers

struct CodeView: View {
    let code: String
    var body: some View {
        ZStack {
            Color
                .gray
                .opacity(0.1)
                .ignoresSafeArea()
            
            ScrollView {
                VStack {
                    Text(code)
                        .font(.headline)
                        .minimumScaleFactor(0.5)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.white)
                        )
                        .contextMenu {
                            Button(action: {
                                UIPasteboard.general.string = code
                            }, label: {
                                Label(
                                    "Copy to clipboard",
                                    systemImage: "doc.on.clipboard"
                                )
                            })
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        
                }
            }
        }
    }
}

#Preview {
    CodeView(code: SwiftFizzBuzzAlgModel().code)
}
