//
//  DemoImage.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/2/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct DemoImage: View {
    var body: some View {
        Image("avatar-icon") // in assets
    }
}

struct DemoImage2: View {
    var body: some View {
        Image(systemName: "clock")
    }
}

struct DemoImage_Previews: PreviewProvider {
    static var previews: some View {
        DemoImage()
    }
}
