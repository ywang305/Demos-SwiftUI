//
//  Demo_Face.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/29/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI
import Combine



struct Demo_Face: View {
    
    @ObservedObject private var globalCoord = GlobalCoord()
    
    var body: some View {
        Ellipse()
//            .foregroundColor(Color.green)
            //.border(Color.red, width: 1)
            .overlay(
                GeometryReader { proxy in
                    VStack{
                        HStack(alignment: .center, spacing: proxy.size.width/2.5) {
                            Demo_Eye(loc: self.globalCoord.loc)
                            Demo_Eye(loc: self.globalCoord.loc)
                        }
                        .offset(x: 0, y: 0)

                        Demo_Mouth()
                            .padding(proxy.size.width/10)
                    }
                }
            )
            .aspectRatio(2/1.3, contentMode: .fit)
    }
}

struct Demo_Face_Previews: PreviewProvider {
    static var previews: some View {
        Demo_Face()
    }
}
