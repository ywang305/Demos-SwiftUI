//
//  DemoSlider.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/4/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct DemoSlider: View {
    @State var degree = 0.0
    var body: some View {
        VStack {
            Slider(value: $degree, in: -99.0...99.0, step: 0.1)
            Text("\(degree)C is \(Int(degree * 9/5 + 32))F")
        }
        
    }
}

struct DemoSlider_Previews: PreviewProvider {
    static var previews: some View {
        DemoSlider()
    }
}
