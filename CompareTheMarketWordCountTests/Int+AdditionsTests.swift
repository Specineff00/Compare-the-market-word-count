//
//  Int+AdditionsTests.swift
//  CompareTheMarketWordCountTests
//
//  Created by Nikash Ramsorrun on 29/08/2019.
//  Copyright © 2019 Yogesh Nikash Ramsorrun. All rights reserved.
//

import XCTest
@testable import CompareTheMarketWordCount

class Int_AdditionsTests: XCTestCase {

    let primeNumbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199]
    
    let nonPrimeNumbers = [1, 4, 6, 8, 9, 10, 12, 14, 15, 16, 18, 20, 21, 22, 24, 25, 26, 27, 28, 30, 32, 33, 34, 35, 36, 38, 39, 40, 42, 44, 45, 46, 48, 49, 50, 51, 52, 54, 55, 56, 57, 58, 60, 62, 63]
    
    let largePrimeNumbers = [187417, 523493, 124673, 86843, 579263]
    
    func test_isPrime_primeNumbers_allTrue() {
        for number in primeNumbers {
            XCTAssertEqual(true, number.isPrime)
        }
    }
    
    func test_isPrime_nonPrimeNumbers_allFalse() {
        for number in nonPrimeNumbers {
            XCTAssertEqual(false, number.isPrime)
        }
    }
    
    func test_isPrime_mixed_correctCount() {
        let mixedNumbers = primeNumbers + nonPrimeNumbers
        XCTAssertEqual(46,  mixedNumbers.filter{ $0.isPrime }.count)
    }
    
    func test_isPrime_largePrimeNumbers_allTrue() {
        for number in largePrimeNumbers {
            XCTAssertEqual(true, number.isPrime)
        }
    }
}
