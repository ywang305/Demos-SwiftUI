//
//  DemoAlert.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/7/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct DemoAlert: View {
    @State var showAlert = false
    var body: some View {
        Button("Show Alert") {
            self.showAlert = true
        }.alert(isPresented: $showAlert) {
            Alert(title: Text("Alert Box"),
                  message: Text("first alert message"),
                  dismissButton: .default(Text("OK")))
        }
    }
}

struct DemoAlert_Previews: PreviewProvider {
    static var previews: some View {
        DemoAlert()
    }
}
