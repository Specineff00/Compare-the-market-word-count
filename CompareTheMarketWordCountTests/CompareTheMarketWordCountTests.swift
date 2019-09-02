//
//  CompareTheMarketWordCountTests.swift
//  CompareTheMarketWordCountTests
//
//  Created by Nikash Ramsorrun on 28/08/2019.
//  Copyright © 2019 Yogesh Nikash Ramsorrun. All rights reserved.
//

import XCTest
@testable import CompareTheMarketWordCount

class CompareTheMarketWordCountTests: XCTestCase {

    let sampleText = """
They were not railway children to begin with. I don't suppose they had
ever thought about railways except as a means of getting to Maskelyne
and Cook's, the Pantomime, Zoological Gardens, and Madame Tussaud's.
They were just ordinary suburban children, and they lived with their
Father and Mother in an ordinary red-brick-fronted villa, with coloured
glass in the front door, a tiled passage that was called a hall, a
bath-room with hot and cold water, electric bells, French windows, and
a good deal of white paint, and 'every modern convenience', as the
house-agents say.
"""
    
    let sameWordsText = "word word word word word word word word word word word word word word word word "
    let emptyText = ""
    let mockView = MockView()
    var testPresenter: Presenter!
    
    override func setUp() {
        super.setUp()
        testPresenter = Presenter(text: sampleText)
        testPresenter.view = mockView
    }
    
    func test_method1_correctCount() {
        testPresenter.onMethod1Tapped()
        XCTAssertEqual(1, mockView.printMethod1ResultsCalls)
        XCTAssertEqual(4, mockView.printMethod1ResultsParams["they"])
        XCTAssertEqual(1, mockView.printMethod1ResultsParams["tiled"])
        XCTAssertEqual(2, mockView.printMethod1ResultsParams["as"])
    }
    
    func test_method1_sameWords_correctCount() {
        testPresenter = Presenter(text: sameWordsText)
        testPresenter.view = mockView
        testPresenter.onMethod1Tapped()
        XCTAssertEqual(1, mockView.printMethod1ResultsCalls)
        XCTAssertNil(mockView.printMethod1ResultsParams["they"])
        XCTAssertEqual(16, mockView.printMethod1ResultsParams["word"])
    }
    
    func test_method1_emptyText_correctCount() {
        testPresenter = Presenter(text: emptyText)
        testPresenter.view = mockView
        testPresenter.onMethod1Tapped()
        XCTAssertEqual(1, mockView.printMethod1ResultsCalls)
        XCTAssertNil(mockView.printMethod1ResultsParams["they"])
        XCTAssertEqual(0, mockView.printMethod1ResultsParams.count)
    }
    
    func test_method2_correctCount() {
        testPresenter.onMethod2Tapped()
        XCTAssertEqual(1, mockView.printMethod2ResultsCalls)
        XCTAssertEqual(4, mockView.printMethod2ResultsParams.count(for: "they"))
        XCTAssertEqual(1, mockView.printMethod2ResultsParams.count(for: "tiled"))
        XCTAssertEqual(2, mockView.printMethod2ResultsParams.count(for: "as"))
    }
    
    func test_method2_sameWords_correctCount() {
        testPresenter = Presenter(text: sameWordsText)
        testPresenter.view = mockView
        testPresenter.onMethod2Tapped()
        XCTAssertEqual(1, mockView.printMethod2ResultsCalls)
        XCTAssertEqual(0, mockView.printMethod2ResultsParams.count(for: "They"))
        XCTAssertEqual(16, mockView.printMethod2ResultsParams.count(for: "word"))
    }
    
    func test_method2_emptyText_correctCount() {
        testPresenter = Presenter(text: emptyText)
        testPresenter.view = mockView
        testPresenter.onMethod2Tapped()
        XCTAssertEqual(1, mockView.printMethod2ResultsCalls)
        XCTAssertEqual(0, mockView.printMethod2ResultsParams.count(for: "They"))
        XCTAssertEqual(0, mockView.printMethod2ResultsParams.count)
    }

}
