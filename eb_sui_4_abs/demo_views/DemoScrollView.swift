//
//  DemoScrollView.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/6/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct DemoScrollView: View {
    var body: some View {
        ScrollView([.vertical], showsIndicators: true) {
            ForEach(0..<50){
                Text("Hello Item \($0)")
            }
            Text("Hello")
            Text("Again")
            Image("avatar-icon").resizable().scaledToFill()
        }    }
}



struct DemoScrollView_Previews: PreviewProvider {
    static var previews: some View {
        DemoScrollView()
    }
}
