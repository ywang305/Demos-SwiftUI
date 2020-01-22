//
//  Demo_Tap.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/13/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct Demo_Tap: View {
    @State private var cnt = 0
    
    var body: some View {
        VStack {
            Text("Single Tap \(cnt)").onTapGesture {
                self.cnt = 1
            }
            Divider()
            Text("Double Tap \(cnt)").onTapGesture(count: 2) {
                self.cnt = 2
            }
        }
        
    }
}

struct Demo_Tap_Previews: PreviewProvider {
    static var previews: some View {
        Demo_Tap()
    }
}
