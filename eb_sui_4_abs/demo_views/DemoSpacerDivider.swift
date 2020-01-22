//
//  DemoSpacer.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/6/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct DemoSpacer: View {
    var body: some View {
        HStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Spacer()
            Text("Diablo IV")
        }
    }
}

struct DemoDivider: View {
    var body: some View {
        ZStack {
            VStack{
                ForEach(-2..<3) {
                    Divider().offset(x: 0, y: CGFloat($0 * 20))
                }
            }
            HStack {
                ForEach(-2..<3) {
                    Divider().offset(x: CGFloat($0 * 20), y: 0)
                }
            }        }
    }
}

struct DemoSpacerDivider_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            DemoSpacer()
            DemoDivider()
        }
    }
}
