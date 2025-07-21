// 
//  SwiftFizzBuzzAlgModel.swift
//  FizzBuzz
//
    

import Foundation

struct SwiftFizzBuzzAlgModel: FizzBuzzAlgProtocol {
    var programmingLanguage: String = "Swift"
    
    var imports: [String] = [
        "import Foundation"
    ]
    
    var commentCode: (String) -> String = { content in
        "// \(content)"
    }
    
    var maxConstDeclaration: String = "let MAX = 100"
    
    var loopWrapper: (String) -> String = { code in
        "for i in 1...MAX {\n\(code.indented())\n}"
    }
    
    var printStatement: (String) -> String = { str in
        #"print("\#(str)")"#
    }
    
    var printIntStatement: (String) -> String = { variable in
        "print(\(variable))"
    }
    
    var ifStatement: (String, String) -> String = { condition, code in
        "if \(condition) {\n\(code.indented())\n} "
    }
    
    var elseIfStatement: (String, String) -> String = { condition, code in
            "else if \(condition) {\n\(code.indented())\n} "
    }
    
    var elseStatement: (String) -> String = { code in
        "else {\n\(code.indented())\n} "
    }
    
    var logicalAndOperator: String = "&&"
    
    
}
