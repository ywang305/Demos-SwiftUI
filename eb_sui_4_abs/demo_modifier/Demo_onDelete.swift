//
//  Demo_onDelete.swift
//  eb_sui_4_abs
//
//  Created by yao on 2/19/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct Demo_onDelete: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    
    var body: some View {
        NavigationView{
            VStack {
                List {
                    //the onDelete() modifier only exists on ForEach
                    ForEach(numbers, id: \.self) {
                        Text("\($0)")
                    }.onDelete(perform: removeRows)
                }.navigationBarItems(leading: EditButton())
                
                Button("Add Number") {
                    self.numbers.append(self.currentNumber)
                    self.currentNumber += 1
                }
            }
        }
    }
    
    func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
}

private struct Demo_onDelete2: View {
    @State var listItems = ["Item 1", "Item 2", "Item 3"]
    
    var body: some View {
        List {
            ForEach(listItems, id: \.self) { (item) in
                Text(item)
            }.onDelete(perform: self.deleteItem)
        }
    }
    
    private func deleteItem(at indexSet: IndexSet) {
        self.listItems.remove(atOffsets: indexSet)
    }
}

struct Demo_onDelete_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Demo_onDelete()
            Demo_onDelete2()
        }
        
    }
}
