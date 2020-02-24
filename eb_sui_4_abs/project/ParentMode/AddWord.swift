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
    
    @State private var word: String = ""
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            TextField("Add New Word To List", text: $word)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                if !self.word.isEmpty {
                    self.wordstore.insert(word: self.word)
                    self.word = ""
                }
            }) {
                Text("Add")
            }
        }.animation(nil)
    }
}

struct AddWord_Previews: PreviewProvider {
    static var previews: some View {
        AddWord()
    }
}
