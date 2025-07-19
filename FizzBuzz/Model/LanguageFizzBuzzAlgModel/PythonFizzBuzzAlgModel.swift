//
//  PythonFizzBuzzAlgModel.swift
//  FizzBuzz
//
    
import Foundation

struct PythonFizzBuzzAlgModel: FizzBuzzAlgProtocol {
    var maxConstDeclaration: String = "MAX = 100"
    
    var loopWrapper: (String) -> String = { code in
        var result = "\nfor i in range(1, MAX + 1):\n"
        for line in code.split(separator: "\n") {
            if line.count > 0 {
                result += "\(line)\n"
            }
        }
        return result
    }
    
    var printStatement: (String) -> String = { text in
        "print(\"\(text)\")\n"
    }
    
    var printIntStatement: (String) -> String = { num in
        "print(\(num))\n"
    }
    
    var ifStatement: (String, String) -> String = { condition, code in
        "\nif \(condition):\n\(code)"
    }
    
    var elseIfStatement: (String, String) -> String = { condition, code in
        "\nelif \(condition):\n\(code)"
    }
    
    var elseStatement: (String) -> String = { code in
        "\nelse:\n\(code)"
    }
    
    var imports: [String] = []
    var programmingLanguage: String = "Python"
    var logicalAndOperator: String = "and"
    
    var commentCode: (String) -> String {
        return { content in
            "# " + content
        }
    }
}
