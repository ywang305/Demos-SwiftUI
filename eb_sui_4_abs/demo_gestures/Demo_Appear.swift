//
//  Demo_Appear.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/21/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct Demo_Appear: View {
    @State private var content = "Hello World"
    var body: some View {
        Text(content).onAppear {
            self.content += ", Appeared"
        }.onDisappear {
            print("disappeared")
        }
    }
}

struct Demo_Appear_Previews: PreviewProvider {
    static var previews: some View {
        Demo_Appear()
    }
}
