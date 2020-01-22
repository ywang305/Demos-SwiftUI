//
//  DemoToggle.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/2/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct DemoToggle: View {
    @State var isHiRes = false
    var body: some View {
        Toggle(isOn: $isHiRes){
            Text("isHiRes: \(isHiRes.description)")
        }
    }
}

struct DemoToggle_Previews: PreviewProvider {
    static var previews: some View {
        DemoToggle()
    }
}
