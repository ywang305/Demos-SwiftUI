//
//  Demo_ImageAsset.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/9/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct Demo_ImageAsset: View {
    var body: some View {
        Image(systemName: "cloud.sun.bolt.fill")
        .resizable()
            .frame(width:250, height:250)
        .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [.yellow, .orange]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(30)
        .shadow(radius: 10)
    }
}

struct Demo_ImageAsset_Previews: PreviewProvider {
    static var previews: some View {
        Demo_ImageAsset()
    }
}
