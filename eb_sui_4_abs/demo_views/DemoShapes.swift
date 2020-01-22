//
//  DemoShapes.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/12/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct DemoShapes: View {
    var body: some View {
        VStack {
            Rectangle()
            RoundedRectangle(cornerSize: CGSize(width: 60, height: 30))
            Circle()
            Ellipse()
            Capsule()
            
            Path(UIBezierPath(
                roundedRect: CGRect(origin:.zero, size:CGSize(width: 200, height: 100)),
                byRoundingCorners: [.topLeft, .topRight],
                cornerRadii: CGSize(width: 25, height: 25)).cgPath
            ).fill(Color.red)
        }
    }
}

struct DemoShapes_Previews: PreviewProvider {
    static var previews: some View {
        DemoShapes()
    }
}
