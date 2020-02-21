//
//  CardPanel.swift
//  eb_sui_4_abs
//
//  Created by yao on 2/18/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct CardListPanel: View {
    @ObservedObject private var wordStore = WordStore.shared
    private var words : [String] {
        wordStore.words
    }
    
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 40){
            ZStack {
                ForEach(words, id: \.self) { w in
                    FlashCard(word: w) {
                        // onRemoval
                        let found = self.words.firstIndex(of: w)!
                        self.wordStore.words.remove(at: found)
                    }
                }
                
            }
            
            AddWord().animation(nil)
        }
    }
}

struct CardListPanel_Previews: PreviewProvider {
    static var previews: some View {
        CardListPanel()
    }
}
