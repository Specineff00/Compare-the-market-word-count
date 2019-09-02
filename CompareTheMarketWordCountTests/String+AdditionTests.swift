//
//  String+AdditionTests.swift
//  CompareTheMarketWordCountTests
//
//  Created by Nikash Ramsorrun on 29/08/2019.
//  Copyright © 2019 Yogesh Nikash Ramsorrun. All rights reserved.
//

import XCTest
@testable import CompareTheMarketWordCount

class String_AdditionTests: XCTestCase {

    let text = """
 Little Red Riding Hood" is a European fairy tale about a young girl and a Big Bad Wolf.[1] Its origins can be traced back to the 10th century to several European folk tales, including one from Italy called The False Grandmother (Italian: La finta nonna), later written among others by Italo Calvino in the Italian Folktales collection; the best known versions were written by Charles Perrault and the Brothers Grimm.[2]
    
    The story has been changed considerably in various retellings and subjected to numerous modern adaptations and readings. Other names for the story are: "Little Red Ridinghood", "Little Red Cap" or simply "Red Riding Hood". It is number 333 in the Aarne–Thompson classification system for folktales.
 """
    
    var punctuation = "" +
        "’'" +       // apostrophe
        "()[]{}<>" + // brackets
        ":" +        // colon
        "," +        // comma
        "‒–—―" +     // dashes
        "…" +        // ellipsis
        "!" +        // exclamation mark
        "." +        // full stop/period
        "«»" +       // guillemets
        "-‐" +       // hyphen
        "?" +        // question mark
        "‘’“”" +     // quotation marks
        ";" +        // semicolon
        "/" +        // slash/stroke
        "⁄" +        // solidus
        "␠" +        // space?
        "·" +        // interpunct
        "&" +        // ampersand
        "@" +        // at sign
        "*" +        // asterisk
        "\\" +       // backslash
        "•" +        // bullet
        "^" +        // caret
        "¤¢$€£¥₩₪" + // currency
        "†‡" +       // dagger
        "°" +        // degree
        "¡" +        // inverted exclamation point
        "¿" +        // inverted question mark
        "¬" +        // negation
        "#" +        // number sign (hashtag)
        "№" +        // numero sign ()
        "%‰‱" +      // percent and related signs
        "¶" +        // pilcrow
        "′" +        // prime
        "§" +        // section sign
        "~" +        // tilde/swung dash
        "¨" +        // umlaut/diaeresis
        "_" +        // underscore/understrike
        "|¦" +       // vertical/pipe/broken bar
        "⁂" +        // asterism
        "☞" +        // index/fist
        "∴" +        // therefore sign
        "‽" +        // interrobang
    "※"          // reference mark
    
    let randomText = "238972@£(@£&£9387 tuh@£(£@&onu £@@*(£hontuhe!@!@(& @£EE@*EE@*O O*EGE*£$"
    
    
    func test_wordSplittingExtension_sampleTexts_wordsReturned() {
        XCTAssertEqual(115, text.words.count)
    }
    
    func testWordSplittingExtension_allPunctuation_noWordsReturned() {
        XCTAssertEqual(0, punctuation.words.count)
    }
    
    func testWordSplittingExtension_randomText_wordsReturned() {
        XCTAssertEqual(8, randomText.words.count)
    }
    

}
