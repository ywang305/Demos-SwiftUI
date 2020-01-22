//
//  DemoTabView.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/5/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct DemoTabView: View {
    var body: some View {
        TabView {
            Text("first controller").tabItem{
                Image(systemName: "1.square.fill")
                Text("tab 1")
            } //.tag(0)
            Text("second controller").tabItem{
                Image(systemName: "2.circle.fill")
                Text("tab 2")
            } //.tag(1)
        }.font(.headline)
    }
}

struct DemoTabView_Previews: PreviewProvider {
    static var previews: some View {
        DemoTabView()
    }
}
