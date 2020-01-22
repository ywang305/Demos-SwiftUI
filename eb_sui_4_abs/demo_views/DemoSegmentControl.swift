//
//  DemoSegmentControl.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/4/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct DemoSegmentControl: View {
    let modes = ["Easy","Difficult","Insane"]
    @State var gameMode = 0
    var body: some View {
        Picker("GameMode", selection: $gameMode, content: {
            ForEach(0..<modes.count) { index in
                Text(self.modes[index]).tag(index)
            }
            }).pickerStyle(SegmentedPickerStyle())
    }
}

struct DemoSegmentControl2: View {
    @State var gameMode = 0
    var body: some View {
        Picker("GameMode", selection: $gameMode, content: {
            Text("Low").tag(0)
            Text("Medium").tag(1)
            Text("High").tag(2)
            }
            ).pickerStyle(SegmentedPickerStyle())
    }
}

struct DemoSegmentControl_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            DemoSegmentControl()
            DemoSegmentControl2()
        }
        
    }
}
