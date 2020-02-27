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
    
//    private func clickBtn() {
//        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
//        submitTF()
//    }
    private func submitTF() {
        if !self.word.isEmpty {
            self.wordstore.readingWords.append(self.word)
            //self.wordstore.insert(word: self.word)
            self.word = ""
        }
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            TextField("Add New Word To List", text: $word, onCommit: submitTF)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: submitTF) {
                Text("ADD")
            }
        }
    }
}



struct AddWord_Previews: PreviewProvider {
    static var previews: some View {
        AddWord()
    }
}
