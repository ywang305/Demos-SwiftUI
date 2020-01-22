//
//  DemoStepper.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/4/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct DemoStepper: View {
    @State var age = 0
    var body: some View {
        VStack {
            Stepper("Enter your age", value: $age, in: 0...130)
            Text("Your age is \(age)")
        }
    }
}

struct DemoStepper_Previews: PreviewProvider {
    static var previews: some View {
        DemoStepper()
    }
}
