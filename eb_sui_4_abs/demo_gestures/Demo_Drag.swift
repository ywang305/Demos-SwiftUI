//
//  Demo_Drag.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/13/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct Demo_Drag: View {
    @State private var loc: CGPoint = .zero
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color.green.opacity(0.1))
                .frame(width:320, height:320)
            
            Image(systemName: "paperplane")
            .font(.largeTitle)
            .foregroundColor(Color.blue.opacity(0.5))
            .offset(x: self.loc.x, y: self.loc.y)
            .animation(Animation.spring())
            .gesture(
                DragGesture().onChanged{
                    self.loc = $0.location
                }.onEnded { _ in
                    if sqrt(self.loc.x*self.loc.x + self.loc.y*self.loc.y) > 160 {
                        self.loc = .zero
                    }
                }
            )}
        }
        
}

struct Demo_Drag_Previews: PreviewProvider {
    static var previews: some View {
        Demo_Drag()
    }
}
