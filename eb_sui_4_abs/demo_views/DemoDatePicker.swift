//
//  DemoDatePicker.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/5/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

// looks aguly
struct DemoDatePicker: View {
    @State private var due = Date()
    var body: some View {
        DatePicker("Enter Due Date", selection: $due)
    }
}


// partial range to limit start from today
struct DemoDatePicker1: View {
    @State private var due = Date()
    var body: some View {
        DatePicker(selection: $due, in: Date()..., displayedComponents: [.date, .hourAndMinute]) {
            Text("Enter Due Date")
        }
    }
}


// make it look better via Form
struct DemoDatePicker2: View {
    @State private var due = Date()
    var body: some View {
        Form{
            DatePicker("Enter Due Date", selection: $due)
        }
    }
}

// make it look better via labelsHidden
struct DemoDatePicker3: View {
    @State private var due = Date()
    var body: some View {
        DatePicker("Enter Due Date", selection: $due).labelsHidden()
    }
}


struct DemoDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            DemoDatePicker()
            DemoDatePicker1()
            DemoDatePicker2()
            DemoDatePicker3()
        }
        
    }
}
