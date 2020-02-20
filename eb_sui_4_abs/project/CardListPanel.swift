//
//  CardPanel.swift
//  eb_sui_4_abs
//
//  Created by yao on 2/18/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct CardListPanel: View {
    //@ObservedObject var wordStore = WordStore()
    @State var words = [String]()

    
    func randomString(length: Int) -> String {
      let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
      return String((0..<length).map{ _ in letters.randomElement()! })
    }
    
    var body: some View {
        VStack{
            
            ZStack {
                ForEach(self.words, id: \.self) { w in
                    FlashCard(word: w, removal: {
                        let found = self.words.firstIndex(of: w)!
                        self.words.remove(at: found)
                    })
                }
                
            }
            
            Button(action: {
                self.words.append(self.randomString(length: 6))
            }) {
                Text("Add Random")
            }
        }
    }
}

struct CardListPanel_Previews: PreviewProvider {
    static var previews: some View {
        CardListPanel()
    }
}
