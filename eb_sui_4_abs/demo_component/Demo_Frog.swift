//
//  Demo_Frog.swift
//  eb_sui_4_abs
//
//  Created by yao on 2/11/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct Demo_Frog: View {
    var body: some View {
        GeometryReader { proxy in
            VStack(alignment: .center, spacing: -10) {
                Demo_Face()
                Demo_Body()
                    //.offset(x:0, y:0).opacity(0.8)
                
                    //.offset(x:0, y: -proxy.size.height/4)
            }
        }.foregroundColor(Color.green)
    }
}

struct Demo_Frog_Previews: PreviewProvider {
    static var previews: some View {
        Demo_Frog().padding(50)
    }
}
