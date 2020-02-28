//
//  CardStack.swift
//  eb_sui_4_abs
//
//  Created by yao on 2/23/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct CardStack: View {
    @ObservedObject private var wordStore = WordStore.shared
    private var words : [Word] {
        self.wordStore.readingWords
    }
    
    var body: some View {
        ZStack {
            ForEach(words) { w in
                FlashCard(word: w.word, onRemoval: {
                    self.wordStore.remove(at: w.seq)
                })
                    .scaleEffect( self.getScale(w.seq))
                    .offset(self.getOffSize(w.seq))
            }
            
        }
    }
}


extension CardStack {
    private func getScale(_ seq: Int) -> CGFloat {
        let endInd = self.words.endIndex
        var scale: CGFloat = 0.8
        if seq==endInd-1 {
            scale = 1
        } else if seq==endInd-2 {
            scale = 0.9
        }
        return scale
    }

    private func getOffSize(_ seq: Int) -> CGSize {
        let endInd = self.words.endIndex

        var size: CGSize = .zero
        if seq==endInd-1 {
            size.height = 0
        } else if seq==endInd-2 {
            size.height = -30
        } else {
            size.height = -60
        }

        return size
    }
}

struct CardStack_Previews: PreviewProvider {
    static var previews: some View {
        CardStack()
    }
}
