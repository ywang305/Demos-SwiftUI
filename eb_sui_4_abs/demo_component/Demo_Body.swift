//
//  Demo_Body.swift
//  eb_sui_4_abs
//
//  Created by yao on 2/11/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI




struct Demo_Body: View {
    var body: some View {
        Capsule().aspectRatio(1/1.5, contentMode: .fit)
    }
}

struct Demo_Body_Previews: PreviewProvider {
    static var previews: some View {
        Demo_Body()
    }
}
