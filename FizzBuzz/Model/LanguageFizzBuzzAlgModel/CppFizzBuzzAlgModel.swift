// 
//  CppFizzBuzzAlgModel.swift
//  FizzBuzz
//
    

import Foundation


struct CppFizzBuzzAlgModel: FizzBuzzAlgProtocol {
    var programmingLanguage: String = "C++"
    
    var imports: [String] = [
        "#include <iostream>"
    ]
    
    var commentCode: (String) -> String = { "// \($0)" }
    
    var maxConstDeclaration: String = "const int MAX = 100;"
    
    var loopWrapper: (String) -> String = { code in
        "for (int i = 1; i <= MAX; ++i) {\n\(code.indented())\n}"
    }

    
    var printStatement: (String) -> String = { "std::cout << \"\($0)\" << std::endl;" }
    
    var printIntStatement: (String) -> String = { "std::cout << \($0) << std::endl;" }
    
    var ifStatement: (String, String) -> String = { condition, code in
            "if (\(condition)) {\n\(code.indented())\n} "
    }
    
    var elseIfStatement: (String, String) -> String = { condition, code in
        "else if (\(condition)) {\n\(code.indented())\n} "
    }
    
    var elseStatement: (String) -> String = { code in
            "else {\n\(code.indented())\n} "
    }
    
    var logicalAndOperator: String = "&&"
    
    var boilerPlateWrapper: (String) -> String = { code in
        "int main() {\n\(code.indented())\n\("return 0;".indented())\n}"
    }
}
