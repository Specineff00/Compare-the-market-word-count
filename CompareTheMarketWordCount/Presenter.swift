//
//  Presenter.swift
//  CompareTheMarketWordCount
//
//  Created by Nikash Ramsorrun on 29/08/2019.
//  Copyright © 2019 Yogesh Nikash Ramsorrun. All rights reserved.
//

import Foundation


protocol ViewContract: class {
    func printMethod1Results(wordDict: [String: Int])
    func printMethod1PrimeNumberResults(results: [String])
    
    func printMethod2Results(countedWordSet: NSCountedSet)
}

protocol PresenterContract: class {
    func onMethod1Tapped()
    func onMethod2Tapped()
}


class Presenter: PresenterContract {

    weak var view: ViewContract?
    
    var wordDict = [String: Int]()
    var words: [String] {
        return text.words.map { String($0).lowercased() }
    }
    let text: String
    
    init(text: String) {
        self.text = text
    }
    
    func onMethod1Tapped() {
        let start = CFAbsoluteTimeGetCurrent()
        countTheUniqueWordsMethodOne(words: words)
        view?.printMethod1Results(wordDict: wordDict)
        determinePrimeNumberFromCount(wordDict: wordDict)
        let diff = CFAbsoluteTimeGetCurrent() - start
        print("Took \(diff) seconds")
    }
    
    func onMethod2Tapped() {
        let start = CFAbsoluteTimeGetCurrent()
        countTheUniqueWordsMethodTwo(words: words)
        let diff = CFAbsoluteTimeGetCurrent() - start
        print("Took \(diff) seconds")
    }
    
    
    private func countTheUniqueWordsMethodOne(words: [String]) {
        
        func filter(words: [String]) {
            guard words.count > 0,
                let word = words.first else { return }
            
            var count = 0
            let newWords = words.filter { _word in
                if  word == _word {
                    count += 1
                    return false
                }
                return true
            }
            wordDict[word] = count
            filter(words: newWords)
        }
        
        filter(words: words)
    }
    
    private func determinePrimeNumberFromCount(wordDict: [String: Int]) {
        
        var resultArray = [String]()
        for (key, count) in wordDict {
            let primeString = count.isPrime ? "IS" : "IS NOT"
            let string = "\(key) has a count of \(count) and it \(primeString) a prime number"
            resultArray.append(string)
        }
        view?.printMethod1PrimeNumberResults(results: resultArray)
    }
    
    private func countTheUniqueWordsMethodTwo(words: [String]) {
        view?.printMethod2Results(countedWordSet: NSCountedSet(array: words))
    }
}
