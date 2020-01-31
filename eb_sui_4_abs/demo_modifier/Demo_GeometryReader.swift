//
//  Demo_GeometryReader.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/12/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct Demo_GeometryReader: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(0..<15) { index in
                    GeometryReader { g in
                        Text("This is item: \(index) \(g.frame(in: .global).debugDescription)").rotationEffect(.degrees(Double(g.frame(in: .global).minX)))
                    }.frame(width: 300, height: 300).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                }
            }
        }.background(Color.orange)
    }
}

struct Demo_GeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        Demo_GeometryReader()
    }
}
