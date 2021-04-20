//
//  Demo_Path.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/13/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct Demo_Path: View {
    
    @State private var smile=true
    
    var body: some View {
        VStack{
            Path { path in
                path.move(to: CGPoint(x: 30, y: 30))
                path.addLine(to: CGPoint(x: 10, y: 210))
                path.addLine(to: CGPoint(x: 210, y: 210))
                path.addLine(to: CGPoint(x: 210, y: 10))
            }
            
            Path { p in
                let start = self.smile ? CGPoint(x:10, y:10) : CGPoint(x:10, y:110)
                let end = self.smile ? CGPoint(x:210, y: 10) : CGPoint(x:210, y: 110)
                
                p.move(to: start)
                p.addQuadCurve(to: end, control: .init(x:110, y:50))
                p.addQuadCurve(to: start, control: .init(x:110,y:100))
            }.fill(Color.blue).onTapGesture {
                self.smile.toggle()
            }.border(Color.black, width: 1)
        }
        
    }
}

struct Demo_Path_Previews: PreviewProvider {
    static var previews: some View {
        Demo_Path().padding()
    }
}
