//
//  AddWord.swift
//  eb_sui_4_abs
//
//  Created by yao on 2/20/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct AddWord: View {
    @ObservedObject private var keyboard = KeyboardResponder()
    @ObservedObject private var wordstore = WordStore.shared
    
    @State private var word: String = ""
    
    private func clickBtn() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        submitTF()
    }
    private func submitTF() {
        if !self.word.isEmpty {
            self.wordstore.insert(word: self.word)
            self.word = ""
        }
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            TextField("Add New Word To List", text: $word, onCommit: submitTF)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: clickBtn) {
                Text("ADD")
            }
        }.modifier(ResponsivePadding(keybordHeight: keyboard.currentHeight))
            .navigationBarItems(trailing: EditButton())
            .navigationBarTitle("Word List", displayMode: .inline)
    }
}

struct ResponsivePadding: ViewModifier {
    let keybordHeight: CGFloat
    
    func body(content: Content) -> some View {
        return content
            .padding(.bottom, keybordHeight)
            .edgesIgnoringSafeArea(.bottom)
            .animation(.easeOut(duration: 0.16))
    }
    
}

struct AddWord_Previews: PreviewProvider {
    static var previews: some View {
        AddWord()
    }
}
