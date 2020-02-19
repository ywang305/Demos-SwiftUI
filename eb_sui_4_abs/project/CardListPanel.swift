//
//  CardPanel.swift
//  eb_sui_4_abs
//
//  Created by yao on 2/18/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct CardListPanel: View {
    @ObservedObject var wordStore = WordStore()
    
    @State var step = 0
    
    
    var body: some View {
        let list = self.wordStore.wordList
        let word = list.first
        return VStack {
            FlashCard(word: word, removal: {
                if let word = word {
                    self.wordStore.remove(word: word)
                }
            })
        }
            
//            Picker("CardPicker", selection: $step){
//                ForEach(0..<count-1) { index in
//                    Text(list[index]).tag(index)
//                }
//            }.pickerStyle(SegmentedPickerStyle())
    }
}

struct CardListPanel_Previews: PreviewProvider {
    static var previews: some View {
        CardListPanel()
    }
}
