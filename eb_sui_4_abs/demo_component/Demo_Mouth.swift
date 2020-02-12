//
//  Demo_Mouth.swift
//  eb_sui_4_abs
//
//  Created by yao on 2/5/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

enum Emotion {
    case Smile
    case Angry
}

private struct Mouth: Shape {
    func path(in rect: CGRect) -> Path {
        let start = CGPoint(x: rect.minX, y: rect.minY)
        let end = CGPoint(x: rect.maxX, y: rect.minY)
        let control = CGPoint(x: rect.midX, y: rect.maxY*2)
        
        var path = Path()
        path.move(to: start)
        path.addQuadCurve(to: end, control: control)
        path.closeSubpath()
        return path
    }
}


struct Demo_Mouth: View {
    @State var happy = true
    var body: some View {
        Mouth()
            .aspectRatio(5, contentMode: .fit)
            .rotation3DEffect(Angle.degrees( self.happy ? 0:180), axis: (x:1,y:0,z:0))
            .foregroundColor(Color.white)
            .onTapGesture {
                self.happy.toggle()
        }
    }
}

struct Demo_Mouth_Previews: PreviewProvider {
    static var previews: some View {
        Demo_Mouth().padding()
    }
}
