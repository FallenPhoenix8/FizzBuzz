//
//  BackgroundImageView.swift
//  FizzBuzz
//

import SwiftUI

struct BackgroundImageView: View {
    var body: some View {
        AsyncImage(
            url: URL(string: getImage()),
            transaction: Transaction(animation: .default)
        ) { result in
            switch result {
            case .success(let image):
                GeometryReader { geo in
                    image
                        .resizable()
                        .scaledToFill()
                        .blur(radius: 0.3)
                        .ignoresSafeArea()
                        .frame(maxWidth: geo.size.width)
                }
                
            default:
                Color.clear.ignoresSafeArea(edges: .vertical)
            }
        }
    }

    func getImage() -> String {
        let listOfImages: [String] = [
            "https://code.kx.com/q/img/fizzbuzz.png",
            "https://images.pexels.com/photos/4068379/pexels-photo-4068379.jpeg?auto=compress&cs=tinysrgb&w=1600",
            "https://images.pexels.com/photos/6387827/pexels-photo-6387827.jpeg?auto=compress&cs=tinysrgb&w=1600"
        ]

        return listOfImages.randomElement() ?? ""
    }
}

#Preview {
    BackgroundImageView()
}
