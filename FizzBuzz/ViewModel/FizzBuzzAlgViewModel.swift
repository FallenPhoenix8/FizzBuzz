//
//  FizzBuzzAlgViewModel.swift
//  FizzBuzz
//

import Foundation

@Observable
class FizzBuzzAlgViewModel {
    struct Algorithm: Identifiable {
        let id: UUID
        let programmingLanguage: String
        let code: String
        let versionNumber: Double?

        init(id: UUID, code: String, programmingLanguage: String, version: Double? = nil) {
            self.id = id
            self.code = code
            self.programmingLanguage = programmingLanguage
            self.versionNumber = version
        }

        init(from algorithm: any FizzBuzzAlgProtocol) {
            self.id = algorithm.id
            self.programmingLanguage = algorithm.programmingLanguage
            self.code = algorithm.code
            self.versionNumber = algorithm.versionNumber
        }
    }

    let algorithms: [Algorithm] = [
        .init(from: PythonFizzBuzzAlgModel()),
        .init(from: SwiftFizzBuzzAlgModel()),
        .init(from: JavaFizzBuzzAlgModel()),
        .init(from: RustFizzBuzzAlgModel()),
        .init(from: CppFizzBuzzAlgModel())
    ]
}
