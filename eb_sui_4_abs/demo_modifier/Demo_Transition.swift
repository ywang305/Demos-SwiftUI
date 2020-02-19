//
//  Demo_Transition.swift
//  eb_sui_4_abs
//
//  Created by yao on 2/18/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct Demo_Transition: View {
    @State var show1 = false
    @State var show2 = false
    var body: some View {
        VStack {
            Spacer()
            
            if show1 {
                Text("Hello Word")
                    .transition(.opacity)
            }
            
            if show1 {
                Text("Hello Disney").transition(.asymmetric(insertion: .opacity, removal: .slide))
            }
            
            if show2 {
                Text("Hello NYC")
                    .transition(AnyTransition.slide.animation(.easeInOut(duration: 2.0)))
            }
            
            Spacer()
            
            Button("Animate 1: Explicit") {
                //since Xcode 11.2, transitions no longer work with implicit animations.
                withAnimation(.easeInOut(duration: 2.0)) {
                    self.show1.toggle()
                }
            }.padding(20)
            
            Button("Animate 2: AnyTransition+animation") {
                //since Xcode 11.2, transitions no longer work with implicit animations.
                self.show2.toggle()
            }.padding(20)
        }
    }
}

struct Demo_Transition_Previews: PreviewProvider {
    static var previews: some View {
        Demo_Transition()
    }
}
