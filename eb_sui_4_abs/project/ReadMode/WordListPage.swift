//
//  WordListPage.swift
//  eb_sui_4_abs
//
//  Created by yao on 2/24/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct WordListPage: View {

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
        }
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
