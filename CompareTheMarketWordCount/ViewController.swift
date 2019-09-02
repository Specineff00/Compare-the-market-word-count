//
//  ViewController.swift
//  CompareTheMarketWordCount
//
//  Created by Nikash Ramsorrun on 28/08/2019.
//  Copyright © 2019 Yogesh Nikash Ramsorrun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ViewContract {
    
    @IBOutlet weak var method1Button: UIButton!
    @IBOutlet weak var method2Button: UIButton!
    
    let presenter: PresenterContract
    
    init(presenter: PresenterContract) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: Bundle(for: type(of: self)))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func method1Tapped(_ sender: Any) {
        method1Button.isUserInteractionEnabled = false
        presenter.onMethod1Tapped()
    }
    
    @IBAction func method2Tapped(_ sender: Any) {
        method2Button.isUserInteractionEnabled = false
        presenter.onMethod2Tapped()
    }

    
//Methods
    func printMethod1Results(wordDict: [String : Int]) {
        for word in wordDict {
           print("\(word.key) : \(word.value)")
        }
        method1Button.isUserInteractionEnabled = true
    }
    
    func printMethod1PrimeNumberResults(results: [String]) {
        for result in results {
            print(result)
        }
    }
    
    func printMethod2Results(countedWordSet: NSCountedSet) {
        for word in countedWordSet {
            print("\(word) : \(countedWordSet.count(for: word))")
        }
        method2Button.isUserInteractionEnabled = true
    }
}

