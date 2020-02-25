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
            NavigationView {
                List {
                    //the onDelete() modifier only exists on ForEach
                    ForEach(words, id: \.self) {
                        Text("\($0)")
                    }.onDelete(perform: removeRows)
                }.navigationBarItems(leading: EditButton())
                    .navigationBarTitle("Reviewing Words")
            }
            
            AddWord().padding()
        }.padding(.bottom, keyboard.currentHeight)
            .edgesIgnoringSafeArea(.bottom)
            .animation(.easeOut(duration: 0.16))
    }
    
    func removeRows(at offsets: IndexSet) {
        self.wordStore.words.remove(atOffsets: offsets)
    }
}

struct WordListPage_Previews: PreviewProvider {
    static var previews: some View {
        WordListPage()
    }
}
