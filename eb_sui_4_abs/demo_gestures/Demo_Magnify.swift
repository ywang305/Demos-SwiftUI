//
//  Demo_Magnify.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/21/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct Demo_Magnify: View {
    @State private var scale: CGFloat = 1.0
    var body: some View {
        Image(systemName: "globe")
            .font(.largeTitle)
            .scaleEffect(self.scale)
            .foregroundColor(Color.black.opacity(0.4))
            .animation(.spring())
            .gesture(
                MagnificationGesture(minimumScaleDelta: 0.3)
                    .onChanged { self.scale = $0 }
                    .onEnded {_ in
                        self.scale = 1.0
                }
            )
            
        
    }
}

struct Demo_Magnify_Previews: PreviewProvider {
    static var previews: some View {
        Demo_Magnify()
    }
}
