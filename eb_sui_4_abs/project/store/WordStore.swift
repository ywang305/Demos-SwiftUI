//
//  CardStore.swift
//  eb_sui_4_abs
//
//  Created by yao on 2/18/20.
//  Copyright © 2020 yao. All rights reserved.
//

import Foundation
import Combine

class WordStore: ObservableObject {
    static let shared = WordStore()
    
    @Published var readingWords : [String] = ["sun", "moon", "girl", "tree", "car", "school", "touch"]
    
    func insert(word: String) -> Void {
        if !readingWords.contains(word) {
            self.readingWords.insert(word, at: 0)
        }
    }
}
