//
//  DemoNavigationView.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/5/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct DemoNavigationView: View {
    var body: some View {
        NavigationView {
            NavigationLink("Click to Detail", destination: Text("New Details"))
                .navigationBarTitle("Domain Master")
        }
    }
}
struct DemoNavigationBarItems: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Go to detail 1", destination: Text("Detail One"))
                NavigationLink("Go to detail 2", destination: Text("Detail Two"))
            }.navigationBarItems(trailing: Button("Click me"){}).navigationBarTitle(Text("Nav list"))
        }
        
    }
}

struct DemoNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            DemoNavigationView()
            DemoNavigationBarItems()
        }
        
    }
}
