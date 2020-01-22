//
//  Demo_Gradient.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/9/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct Demo_Gradient: View {
    var body: some View {
        Circle().stroke(LinearGradient(gradient: Gradient(colors: [.red, .green]), startPoint: .top, endPoint: .bottom),
                        lineWidth: 25).padding()
    }
}

struct Demo_Gradient_Previews: PreviewProvider {
    static var previews: some View {
        Demo_Gradient()
    }
}
