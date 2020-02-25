//
//  WordListPage.swift
//  eb_sui_4_abs
//
//  Created by yao on 2/24/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct WordListPage: View {
    
    @ObservedObject private var keyboard = KeyboardResponder()
    @ObservedObject private var wordStore = WordStore.shared
    
    private var words: [String] {
        wordStore.words
    }
    
    var body: some View {
        VStack {
            List {
                //the onDelete() modifier only exists on ForEach
                ForEach(words, id: \.self) {
                    Text("\($0)")
                }.onDelete(perform: removeRows)
            }
            AddWord().padding()
        }.modifier(ResponsivePadding(keybordHeight: keyboard.currentHeight))
            .navigationBarItems(trailing: EditButton())
            .navigationBarTitle("Word List", displayMode: .inline)
    }
    
    func removeRows(at offsets: IndexSet) {
        self.wordStore.words.remove(atOffsets: offsets)
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

struct WordListPage_Previews: PreviewProvider {
    static var previews: some View {
        WordListPage()
    }
}
