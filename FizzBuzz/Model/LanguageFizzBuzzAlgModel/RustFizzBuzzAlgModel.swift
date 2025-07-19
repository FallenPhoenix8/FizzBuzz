// 
//  RustFizzBuzzAlgModel.swift
//  FizzBuzz
//
    

import Foundation

struct RustFizzBuzzAlgModel: FizzBuzzAlgProtocol {
    var programmingLanguage: String = "Rust"
    
    var imports: [String] = []
    
    var commentCode: (String) -> String = { "// \($0)\n"}
    
    var maxConstDeclaration: String = "let max: u32 = 100;"
    
    var loopWrapper: (String) -> String = { code in
        "for i in 1..max {\n\(code.indented())\n}\n"
    }
    
    var printStatement: (String) -> String = { "println!(\"\($0)\");" }
    
    var printIntStatement: (String) -> String = { "println!(\"{\($0)}\");" }
    
    var ifStatement: (String, String) -> String = { condition, code in
        "if \(condition){\n\(code.indented())\n} "
    }
    
    var elseIfStatement: (String, String) -> String = { condition, code in
        "else if \(condition){\n\(code.indented())\n} "
    }
    
    var elseStatement: (String) -> String = { code in
            "else {\n\(code.indented())\n}"
    }
    
    var logicalAndOperator: String = "&&"
    
    var boilerPlateWrapper: (String) -> String = { code in
        "fn main() {\n\(code.indented())\n}\n"
    }
}
