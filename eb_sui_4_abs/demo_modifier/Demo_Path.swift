//
//  Demo_Path.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/13/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct Demo_Path: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 10, y: 10))
            path.addLine(to: CGPoint(x: 10, y: 210))
            path.addLine(to: CGPoint(x: 210, y: 210))
            path.addLine(to: CGPoint(x: 210, y: 10))
        }
    }
}

struct Demo_Path_Previews: PreviewProvider {
    static var previews: some View {
        Demo_Path().padding()
    }
}
