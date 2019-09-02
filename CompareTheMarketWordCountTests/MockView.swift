//
//  MockView.swift
//  CompareTheMarketWordCountTests
//
//  Created by Yogesh N Ramsorrrun on 29/08/2019.
//  Copyright © 2019 Yogesh Nikash Ramsorrun. All rights reserved.
//

import XCTest
@testable import CompareTheMarketWordCount

class MockView: ViewContract {
    
    var printMethod1ResultsCalls = 0
    var printMethod1ResultsParams = [String : Int]()
    func printMethod1Results(wordDict: [String : Int]) {
        printMethod1ResultsCalls += 1
        printMethod1ResultsParams = wordDict
    }
    
    var printMethod1PrimeNumberResultsCalls = 0
    var printMethod1PrimeNumberResultsParams = [String]()
    func printMethod1PrimeNumberResults(results: [String]) {
        printMethod1PrimeNumberResultsCalls += 1
        printMethod1PrimeNumberResultsParams = results
    }
    
    var printMethod2ResultsCalls = 0
    var printMethod2ResultsParams = NSCountedSet()
    func printMethod2Results(countedWordSet: NSCountedSet) {
        printMethod2ResultsCalls += 1
        printMethod2ResultsParams = countedWordSet
    }
    
    
}
