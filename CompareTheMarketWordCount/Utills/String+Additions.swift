//
//  String+Additions.swift
//  CompareTheMarketWordCount
//
//  Created by Nikash Ramsorrun on 29/08/2019.
//  Copyright © 2019 Yogesh Nikash Ramsorrun. All rights reserved.
//

import Foundation

extension StringProtocol {
    var words: [SubSequence] {
        return split{ !$0.isLetter }
    }
}

