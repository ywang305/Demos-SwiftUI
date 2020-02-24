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
    private var words : [String] {
        self.wordStore.words
    }
    
    
    
    var body: some View {
        ZStack {
            ForEach(words, id: \.self) { w in
                FlashCard(word: w) {
                    // onRemoval
                    let found = self.words.firstIndex(of: w)!
                    self.wordStore.words.remove(at: found)
                }
                .scaleEffect( self.getScale(w) )
                .offset( self.getOffset(w))
            }
            
        }
    }
    
    
    private func getScale(_ w: String) -> CGFloat {
        let ind = self.words.lastIndex(of: w)
        let endInd = self.words.endIndex-1
        
        var scale: CGFloat = 0.8
        if ind==endInd-1{
            scale = 1
        } else if ind==endInd-2 {
            scale = 0.9
        }
        
        return scale
    }
    
    private func getOffset(_ w: String) -> CGSize {
        let ind = self.words.lastIndex(of: w)
        let endInd = self.words.endIndex-1
        
        var size: CGSize = .zero
        if ind==endInd-1{
            size.height = -40
        }
        else if ind==endInd-2 {
            size.height = -80
        }
        
        return size
    }

}


struct CardStack_Previews: PreviewProvider {
    static var previews: some View {
        CardStack()
    }
}
