//
//  Demo_ImageClip.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/9/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct Demo_ImageClip: View {
    var body: some View {
        Image("musle-boy")
        .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width:250, height:250)
        .clipShape(Circle())
            .overlay(Circle().stroke(Color.black, lineWidth: 2))
        .shadow(radius: 10)
        
    }
}

struct Demo_ImageClip_Previews: PreviewProvider {
    static var previews: some View {
        Demo_ImageClip()
    }
}
