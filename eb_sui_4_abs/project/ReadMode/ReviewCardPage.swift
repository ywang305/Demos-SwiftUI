//
//  ReviewCardPage.swift
//  eb_sui_4_abs
//
//  Created by yao on 2/24/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct ReviewCardPage: View {
    @State private var open = false
    
    var body: some View {
        NavigationView {
            
            VStack {
                Spacer()
                CardStack()
                Spacer()
                NavigationLink(destination: WordListPage()) {
                    Image(systemName: "list.dash")
                    .resizable()
                    .frame(width: 30, height: 20, alignment: .center)
                }
                
                
            }.padding()
            
            
        }
        
    }
}

struct ReviewCardPage_Previews: PreviewProvider {
    static var previews: some View {
        ReviewCardPage()
    }
}
