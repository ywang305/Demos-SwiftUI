//
//  DemoPresent.swift
//  eb_sui_4_abs
//
//  Created by Yao Wang on 12/26/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI
import Combine



import SwiftUI
import Combine
struct DemoPresent: View {
    @State private var showModal = false
    @State private var showCamera = false
    var body: some View {
        NavigationView {
            Text("Hello World")
                .navigationBarTitle("", displayMode: .inline)
                .navigationBarItems(
                    leading:
                        NavigationLink(
                            destination: PresentedView(message: "Dismiss Push Test"),
                            label: {Text("Push Page")}),
                    trailing:
                        Button("Show modal") {
                            self.showModal = true
                        }.sheet(isPresented: $showModal, onDismiss: {
                            print(self.showModal)
                        }) {
                            PresentedView(message: "Dismiss Modal view")
                        }
                )
        }
    }
}

struct PresentedView: View {
    @Environment(\.presentationMode) var presentation
    let message: String
    
    var body: some View {
        NavigationView {
            Button(message) {
                self.presentation.wrappedValue.dismiss()
            }
            .navigationBarItems(trailing: Button("Done") {
                self.presentation.wrappedValue.dismiss()
            })
        }
    }
}

struct DemoPresent_Previews: PreviewProvider {
    static var previews: some View {
        DemoPresent()
    }
}
