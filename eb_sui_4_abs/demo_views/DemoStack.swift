//
//  DemoStack.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/6/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct DemoZStack: View {
    var body: some View {
        ZStack(alignment: .trailing) {
            Text("Hello")
            Text("World2").offset(x: 0, y: -20)
        }
    }
}

// alginment
struct DemoVStack: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Hello")
            Text("World")
        }
    }
}

struct DemoStack_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            DemoZStack()
            Divider()
            DemoVStack()
        }
    }
}
