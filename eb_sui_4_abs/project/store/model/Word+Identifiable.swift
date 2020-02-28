//
//  Word.swift
//  eb_sui_4_abs
//
//  Created by yao on 2/27/20.
//  Copyright © 2020 yao. All rights reserved.
//

import Foundation
import SwiftUI

struct Word {
    let id = UUID()
    
    let word: String
    let seq: Int
    let icon: Image?
    
    init(_ word: String, seq: Int, icon: Image?=nil) {
        self.word = word
        self.seq = seq
        self.icon = icon
    }
}



extension Word: Identifiable { }
