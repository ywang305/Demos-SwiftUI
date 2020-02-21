//
//  AddWord.swift
//  eb_sui_4_abs
//
//  Created by yao on 2/20/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct AddWord: View {
    @ObservedObject private var wordstore = WordStore.shared
    
    @State private var show = false
    @State private var word = ""
    
    var body: some View {
        HStack {
            if self.show {
                TextField("Add New Word To List", text: $word)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {
                    self.wordstore.words.insert(self.word, at: 0)
                    self.word = ""
                }) {
                    Text("Add")
                }.padding(.horizontal)
            }
            
            Spacer()
            
            
            Button(action: {
                self.show.toggle()
            }) {
                Image(systemName: self.show ? "chevron.down.circle": "chevron.up.circle").font(.largeTitle)
            }
        }
    }
}

struct AddWord_Previews: PreviewProvider {
    static var previews: some View {
        AddWord()
    }
}
