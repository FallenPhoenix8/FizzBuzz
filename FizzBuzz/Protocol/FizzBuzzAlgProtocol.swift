//
//  FizzBuzzAlgProtocol.swift
//  FizzBuzz
//
    
import Foundation

/// Protocol for algorithm of FizzBuzz algorytm
/// String representation contains generated algorythm
protocol FizzBuzzAlgProtocol: Identifiable {
    var programmingLanguage: String { get }
    
    var versionNumber: Double? { get }
    var imports: [String] { get }
    
    // Syntax
    
    /// Takes comment's `content` as an argument
    var commentCode: (String) -> String { get }
    
    /// Takes `code` as an argument
    /// It's supposed to be implemented for every language that needs boilerplate code
    /// By default returns code without any boilerplate
    var boilerPlateWrapper: (String) -> String { get }
    
    /// Defines max number of iterations
    var maxConstDeclaration: String { get }
    
    /// Defines loop syntax
    /// Takes `code` as a parameter
    var loopWrapper: (String) -> String { get }
    
    /// Defines a way to print `String` to the console
    var printStatement: (String) -> String { get }
    
    /// Defines a way to print `Integers` to the console
    var printIntStatement: (String) -> String { get }
    
    /// Defines `if` syntax for the language
    /// Takes `condition` as the first argument and `code` as the second
    var ifStatement: (String, String) -> String { get }
    
    /// Defines `else if` syntax for the language
    /// Takes `condition` as the first argument and `code` as the second
    var elseIfStatement: (String, String) -> String { get }
    
    /// Defines `else` syntax for a language
    /// Takes `code` as an argument
    var elseStatement: (String) -> String { get }
    
    // Operators
    
    /// Defines equality comparator
    /// By default `==`
    var equalityComparator: String { get }
    
    /// Defines modulo operator
    /// By default `%`
    var moduloOperator: String { get }
    
    /// Defines `and` operator
    var logicalAndOperator: String { get }
    
    var code: String { get }
}

extension FizzBuzzAlgProtocol {
    var id: UUID { UUID() } // Each access creates a new UUID
    var versionNumber: Double? { nil }
    var boilerPlateWrapper: (String) -> String {
        return { code in
            code
        }
    }

    var equalityComparator: String { "==" }
    var moduloOperator: String { "%" }
    var code: String {
        var completeCode = ""
        // Creating description comment
        completeCode += self.commentCode("FizzBuzz algorythm implemententation in \(self.programmingLanguage)\n")
        
        // Creating imports at the top
        for importItem in self.imports {
            completeCode += importItem + "\n"
        }
        
        var code = ""
        
        // Creating logic for the algorythm with if statements
        var logic = ""
        let isDivisibleByThreeCondition = "i \(self.moduloOperator) 3 \(self.equalityComparator) 0"
        let isDivisibleByFiveCondition = "i \(self.moduloOperator) 5 \(self.equalityComparator) 0"
        let isDivisibleByFiveConditionAndThree = "\(isDivisibleByFiveCondition) \(self.logicalAndOperator) \(isDivisibleByThreeCondition)"
        
        logic += self.ifStatement(isDivisibleByFiveConditionAndThree, self.printStatement("FizzBuzz"))
        logic += self.elseIfStatement(isDivisibleByThreeCondition, self.printStatement("Fizz"))
        logic += self.elseIfStatement(isDivisibleByFiveCondition, self.printStatement("Buzz"))
        logic += self.elseStatement(self.printIntStatement("i"))
        
        // Embedding if statements with a loop
        code = loopWrapper(logic + "\n")
        
        // Embedding loop with boilerplate code
        code = self.boilerPlateWrapper(code)
        
        completeCode += code
        
        return completeCode
    }
}
