// 
//  JavaFizzBuzzAlgModel.swift
//  FizzBuzz
//
    

import Foundation

struct JavaFizzBuzzAlgModel: FizzBuzzAlgProtocol {
    var programmingLanguage: String = "Java"
    
    var imports: [String] = []
    
    var commentCode: (String) -> String = { "// \($0)" }
    
    var maxConstDeclaration: String = "int MAX = 100;"
    
    var loopWrapper: (String) -> String = { code in
            "for (int i = 1; i <= MAX; i++) {\n" + code + "\n}"
    }
    
    var printStatement: (String) -> String = { "System.out.println(\"\($0)\");" }
    
    var printIntStatement: (String) -> String = { "System.out.println(\($0));"}
    
    var ifStatement: (String, String) -> String = { "if (\($0)) {\n\($1)\n}" }
    
    var elseIfStatement: (String, String) -> String = { " else if (\($0)) {\n\($1)\n}"}
    
    var elseStatement: (String) -> String = { " else {\n\($0)\n}"}
    
    var logicalAndOperator: String = "&&"
    
    var boilerPlateWrapper: (String) -> String = { code in
        "public class Main {\n" + "public static void main(String[] args) {\n\(code.indented())\n\t}\n}".indented()
    }
    
    
}
