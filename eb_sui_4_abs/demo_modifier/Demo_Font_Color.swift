//
//  Demo_Stack.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/9/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct Demo_Stack: View {
    var body: some View {
        HStack{
            Image(systemName: "person")
            Text("James Varma").foregroundColor(.blue)
            }.font(.title).background(Color.yellow)
        
    }
}

struct Demo_ColorCircle: View {
    var body: some View {
        ZStack{
            Circle().fill(Color.green)
            Circle().fill(Color.yellow).scaleEffect(CGFloat(0.8))
            Circle().fill(Color.orange).scaleEffect(CGFloat(0.6))
            Circle().fill(Color.red).scaleEffect(CGFloat(0.4))
        }
        
    }
}


struct Demo_Stack_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            Demo_Stack()
            Demo_ColorCircle()
        }.previewDevice("iPhone SE")
        
    }
}
