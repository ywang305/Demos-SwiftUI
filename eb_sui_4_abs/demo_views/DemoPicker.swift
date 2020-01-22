//
//  DemoPicker.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/5/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

let institues = ["CCNY","SYR","QC","CMU", "UCLA"]

struct DemoPicker: View {
    @State private var college = "CCNY"
    var body: some View {
        VStack {
            Picker(selection: $college, label: Text("select your colldge")) {
                // content lambda
                ForEach(institues, id:\.self) { value in
                    Text(value)
                }
            }
            Text("you selected \(college)")
        }
    }
}

struct DemoPicker_Previews: PreviewProvider {
    static var previews: some View {
        DemoPicker()
    }
}
