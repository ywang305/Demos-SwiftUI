//
//  DemoButton.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/2/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct DemoButton: View {
    var body: some View {
        Button("Click me") {
            //handler
            print("clicked")
        }
    }
}

struct DemoButton_Previews: PreviewProvider {
    static var previews: some View {
        DemoButton()
    }
}
