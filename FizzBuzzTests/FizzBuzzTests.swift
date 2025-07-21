//
//  FizzBuzzTests.swift
//  FizzBuzz
//

@testable import FizzBuzz
import XCTest

final class FizzBuzzTests: XCTestCase {
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testAllModelFilesAreRegistered() throws {
        let fileManager = FileManager.default

        // Start from this test file’s location
        let testFileURL = URL(fileURLWithPath: #file)
        let projectRoot = testFileURL
            .deletingLastPathComponent() // FizzBuzzTests/
            .deletingLastPathComponent() // project root
            .appendingPathComponent("FizzBuzz/Model/LanguageFizzBuzzAlgModel")

        print("🔍 Scanning folder: \(projectRoot.path)")

        // Get all matching .swift files
        let files = try fileManager.contentsOfDirectory(at: projectRoot, includingPropertiesForKeys: nil)
        let modelFiles = files.filter {
            $0.pathExtension == "swift" && $0.lastPathComponent.hasSuffix("FizzBuzzAlgModel.swift")
        }

        /// Expected models in the app
        let expectedModels: [String] = modelFiles.map(\.lastPathComponent)
        
        /// Registered models in the app
        let registeredModels = FizzBuzzAlgViewModel().algorithms
        
        var expectedModelsCopy: [String] = expectedModels
        
        for model in registeredModels {
            let languageName = model.programmingLanguage.lowercased()
    
            for expectedModel in expectedModels {
                if expectedModel.lowercased().contains(languageName) {
                    expectedModelsCopy = expectedModelsCopy.filter { $0 != expectedModel }
                }
            }
        }
        
        let errorMessage: String = """
            Some models aren't registered in `FizzBuzzAlgViewModel.algorithms`:
            \((expectedModelsCopy.map { "- \($0)" }).joined(separator: "\n"))
            """
        XCTAssertEqual(expectedModelsCopy.count, 0, errorMessage)
    }
}
