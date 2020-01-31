//
//  Demo_Face.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/29/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI



struct Demo_Face: View {
    @State private var tapLoc = CGPoint.zero
    
    private var drag: some Gesture {
        DragGesture(minimumDistance: 0, coordinateSpace: .global).onEnded {
            self.tapLoc = $0.location
        }
    }
    
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 50) {
                Demo_Eye(loc: tapLoc)
                Demo_Eye(loc: tapLoc)
            }
            Spacer()
        }
        .gesture(drag)
    }
}

struct Demo_Face_Previews: PreviewProvider {
    static var previews: some View {
        Demo_Face()
    }
}
