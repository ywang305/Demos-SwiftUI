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
    let loc: CGPoint?
    @State private var blink = false
    
    let timerPublisher = Timer.publish(every: 5.0, on: .current, in: .common).autoconnect()
    
    private func calOffset(_ g: GeometryProxy)->CGPoint? {
        guard let loc = self.loc else {return nil}
        
        let radius = g.size.width/2
        let rect = g.frame(in:.global)
        
        let dffX = loc.x - rect.midX
        let dffY = loc.y - rect.midY
        
        var offX: CGFloat = 0
        if dffX<0 {
            offX = max(dffX, -radius/2.5)
        } else {
            offX = min(dffX, radius/2.5)
        }
        
        var offY: CGFloat = 0
        if dffY<0 {
            offY = max(dffY, -radius/2.5)
        } else {
            offY = min(dffY, radius/2.5)
        }
        
        return CGPoint(x: offX, y: offY)
    }
    
    var body: some View {
        GeometryReader { g in
            ZStack {
                Circle()
                    .fill(RadialGradient(gradient: Gradient(colors: [.white, .black]), center: .center, startRadius: g.size.width/30, endRadius: g.size.width/10))
                    .frame(width: g.size.width/2, height: g.size.width/2)
                    .offset(x: self.calOffset(g)?.x ?? 0, y: self.calOffset(g)?.y ?? 0)
                    .animation(Animation.spring().speed(0.1))

                Rectangle()
                    .offset(x:0, y: self.blink ? 0 : -g.size.height)
                    .animation(Animation.spring().repeatForever(autoreverses: true))
                    .foregroundColor(Color.green)
                    .onAppear(){
                        self.blink.toggle()
                }
            }
            
        }
        .background(Color.white)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.black, lineWidth: 2))
            .shadow(radius: 20)
            .scaledToFit()
    }
}



struct Demo_Eye_Previews: PreviewProvider {
    @State static var pt: CGPoint = .zero
    static var previews: some View {
        Demo_Eye(loc: nil)
    }
}
