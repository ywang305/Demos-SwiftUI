//
//  Demo_LongPress.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/13/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct Demo_LongPress: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onLongPressGesture {
                debugPrint("Text was long pressed")
        }
    }
}

struct Demo_LongPress_Previews: PreviewProvider {
    static var previews: some View {
        Demo_LongPress()
    }
}
