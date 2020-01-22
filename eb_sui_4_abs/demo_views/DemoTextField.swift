//
//  DemoTextField.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/4/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct DemoTextField: View {
    @State private var name = "Unknown"
    var body: some View {
        VStack {
            Text("Hello \(name)")
            TextField("placeholder", text: $name).textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}

struct DemoSecureField: View {
    @State private var password = ""
    var body: some View {
        VStack {
            Text("Your secret \(password)")
            SecureField("placeholder", text: $password){}.textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}

struct DemoTextField_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            DemoTextField()
            DemoSecureField()
        }
    }
}
