//
//  FizzBuzzSequence.swift
//  FizzBuzz
//

import Foundation

enum FizzBuzzSequence {
    static func item(from num: Int) -> String {
        let isDivisibleByThree = num % 3 == 0
        let isDivisibleByFive = num % 5 == 0

        if isDivisibleByThree && isDivisibleByFive {
            return "FizzBuzz"
        } else if isDivisibleByThree {
            return "Fizz"
        } else if isDivisibleByFive {
            return "Buzz"
        } else {
            return String(num)
        }
    }
}
