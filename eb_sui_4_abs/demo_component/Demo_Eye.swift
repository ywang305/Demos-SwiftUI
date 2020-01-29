//
//  Demo_Eye.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/27/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI


let gradient = RadialGradient(gradient: Gradient(colors: [.white, .black]), center: .center, startRadius: 2, endRadius: 40)


struct EyeBall: View {
    @State private var loc: CGPoint = .zero
    var body: some View {
        GeometryReader { g in
            Circle()
                .fill(RadialGradient(gradient: Gradient(colors: [.white, .black]), center: .center, startRadius: g.size.width/30, endRadius: g.size.width/10))
            .frame(width: g.size.width/2, height: g.size.width/2)
            .offset(x: self.loc.x, y: self.loc.y)
            .animation(Animation.spring())
            .gesture(
                DragGesture().onChanged {
                    if sqrt(self.loc.x*self.loc.x + self.loc.y*self.loc.y) < g.size.width/2 {
                        self.loc = $0.location
                    }
                    
                }.onEnded { _ in
                    if sqrt(self.loc.x*self.loc.x + self.loc.y*self.loc.y) > g.size.width/2 {
                        self.loc = .zero
                    }
                }
            )
        }
    }
}

struct Demo_Eye: View {
    var body: some View {
        EyeBall().background(Color.yellow).clipShape(Circle())
            .overlay(Circle().stroke(Color.black, lineWidth: 2))
        .shadow(radius: 20)
    }
}

struct Demo_Eye_Previews: PreviewProvider {
    static var previews: some View {
        Demo_Eye()
    }
}
