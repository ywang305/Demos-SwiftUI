//
//  Demo_purelyDeleteItem.swift
//  eb_sui_4_abs
//
//  Created by yao on 2/19/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct Music: Identifiable, Hashable {
    var id = UUID()
    var name: String
}

struct Demo_purelyDeleteItem: View {
    @State var musicLists = [
        Music(name:"THE GIFT"),
        Music(name:"Something Just Like This"),
        Music(name:"Dream It Possible"),
        Music(name:"Eyes On Me"),
        Music(name:"Windy Hill"),
        Music(name:"LOVE Theme from TIGA"),
        Music(name:"Victory"),
        Music(name:"Bamboo"),
        Music(name:"Summer")
    ]
    
    func delete(at index: Int) {
        musicLists.remove(at: index)
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(musicLists) { music in
                    HStack {
                        Text(music.name)
                        Spacer()
                        Button(action: {
                            let index = self.musicLists.firstIndex(where: { $0.id == music.id })!
                            self.delete(at: index)
                            
                        }){
                                Text("Delete")
                                }.foregroundColor(Color(.red))
                        }
                    }
                }.navigationBarTitle("Songs")
        }
    }
}
    
    struct Demo_purelyDeleteItem_Previews: PreviewProvider {
        static var previews: some View {
            Demo_purelyDeleteItem()
        }
}
