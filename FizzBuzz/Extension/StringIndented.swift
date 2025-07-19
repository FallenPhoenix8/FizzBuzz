//
//  StringIndent.swift
//  FizzBuzz
//

import Foundation

extension String {
    func indented(by tabs: Int) -> Self {
        let lines = self.split(separator: "\n")
            .map { String($0) }
        var indentedLines: [String] = []

        // Creating tabs count
        var tabsString = ""
        for _ in 0 ..< tabs {
            tabsString.append("\t")
        }

        // Prepending tabs for each line
        for line in lines {
            let indentedLine = tabsString.appending(line)
            indentedLines.append(indentedLine)
        }

        return indentedLines.joined(separator: "\n")
    }
    
    func indented() -> Self {
        return self.indented(by: 1)
    }
}
