//
//  Demo_Rotation.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/21/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct Demo_Rotation: View {
    @State private var angle = Angle.radians(0)
    var body: some View {
        RoundedRectangle(cornerRadius: 50 )
            .foregroundColor(Color.green.opacity(0.1))
            .rotationEffect(self.angle)
            .gesture(
                RotationGesture(minimumAngleDelta: Angle.degrees(1)).onChanged { self.angle = $0 }
                .onEnded { angle in
                    self.angle = Angle.radians(0)
                }
        ).padding()
    }
}

struct Demo_Rotation_Previews: PreviewProvider {
    static var previews: some View {
        Demo_Rotation()
    }
}
