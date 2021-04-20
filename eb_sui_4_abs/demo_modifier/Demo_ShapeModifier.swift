//
//  Demo_ShapeModifier.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/12/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct Demo_Clipped: View {
    var body: some View {
        VStack {
            Image("musle-boy").frame(width: 200, height: 200, alignment: .center).clipped()
        }
        
    }
}
struct Demo_Trim: View {
    var body: some View {
        VStack {
            Circle().trim(from: 0.25, to: 0.75)
            Rectangle().trim(from: 0.5, to: 1.0)
        }.padding()
        
    }
}

struct Demo_Stroke: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 100) {
            Rectangle().stroke(lineWidth: 10)
            
            Rectangle().stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round, miterLimit: 0, dash: [0, 5], dashPhase: 0))
        }.padding()
        
    }
}

struct Demo_ShapeModifier_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Demo_Clipped()
            Demo_Trim()
            Demo_Stroke()
        }
        
    }
}
