//
//  Demo_PathRect.swift
//  eb_sui_4_abs
//
//  Created by yao on 2/10/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))

        return path
    }
}

struct Demo_Shape: View {
    var body: some View {
        Triangle().fill(Color.red).frame(width: 300, height: 300)
    }
}

struct Demo_Shape_Previews: PreviewProvider {
    static var previews: some View {
        Demo_Shape()
    }
}
