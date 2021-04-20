//
//  Demo_Animation.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/12/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct Demo_Animation: View {
    @State private var jiggle = false
    
    var body: some View {
        VStack{
            // explicit animation
            Text("Hello, Edwin!")
                .scaleEffect(jiggle ? 1.0: 3.0)
                .animation(Animation.spring().repeatForever())
                .onAppear {
                    self.jiggle.toggle()
            }
            // implicit
            Text("Hello Brad")
                .scaleEffect(jiggle ? 1.0: 3.0)
                .onAppear{
                    withAnimation(Animation.spring().repeatForever()) {
                        self.jiggle.toggle()
                    }
            }
            Text("Hello Chen")
                .scaleEffect(jiggle ? 1.0: 3.0)
                .onAppear{
                    withAnimation(Animation.spring().repeatForever()) {
                        self.jiggle.toggle()
                    }
            }        }
        
    }
}

struct Demo_Animation_Previews: PreviewProvider {
    static var previews: some View {
        Demo_Animation()
    }
}
