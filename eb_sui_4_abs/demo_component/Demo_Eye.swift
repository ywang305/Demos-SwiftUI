//
//  Demo_Eye.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/27/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI


let gradient = RadialGradient(gradient: Gradient(colors: [.white, .black]), center: .center, startRadius: 2, endRadius: 40)


struct Demo_Eye: View {
    let loc: CGPoint
    
    
    var body: some View {
        GeometryReader { g in
            Circle()
                .fill(RadialGradient(gradient: Gradient(colors: [.white, .black]), center: .center, startRadius: g.size.width/30, endRadius: g.size.width/10))
            
            .frame(width: g.size.width/2, height: g.size.width/2)
                .offset(x: CGFloat.minimum(self.loc.x, g.size.width/4), y: CGFloat.minimum(self.loc.y, g.size.width/4))
                .animation(Animation.spring().speed(10))
//            // debug
//            .gesture(
//                DragGesture().onChanged {
//                    if sqrt(self.loc.x*self.loc.x + self.loc.y*self.loc.y) < g.size.width/4 {
//                        self.loc = $0.location
//                    }
//
//                }.onEnded { _ in
//                    if sqrt(self.loc.x*self.loc.x + self.loc.y*self.loc.y) > g.size.width/4 {
//                        self.loc = .zero
//                    }
//                }
//            )
            
        }.background(Color.yellow)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.black, lineWidth: 2))
            .shadow(radius: 20)
            .scaledToFit()
    }
}



struct Demo_Eye_Previews: PreviewProvider {
    @State static var pt: CGPoint = .zero
    static var previews: some View {
        Demo_Eye(loc: CGPoint.zero)
    }
}
