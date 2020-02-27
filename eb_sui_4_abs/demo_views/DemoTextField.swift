//
//  DemoTextField.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/4/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct DemoTextField: View {
    @ObservedObject private var kbState = KBStateUtil()
    @State private var name = "Unknown"
    var body: some View {
        VStack {
            Text("Hello \(name)")
            TextField("placeholder", text: $name).textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
    var debug: Any {
        print(self.kbState.kbRect)
    }
}

struct DemoSecureField: View {
    @State private var password = ""
    var body: some View {
        VStack {
            Text("Your secret \(password)")
            SecureField("placeholder", text: $password){}
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .overlay(RoundedRectangle(cornerRadius: 4)
                    .stroke(Color.blue, lineWidth: 1))
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


final class KBStateUtil: ObservableObject {
    private var notificationCenter: NotificationCenter
    @Published private(set) var currentHeight: CGFloat = 0
    
    @Published var kbRect: CGRect = .zero

    init(center: NotificationCenter = .default) {
        notificationCenter = center
        notificationCenter.addObserver(self, selector: #selector(keyBoardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        notificationCenter.addObserver(self, selector: #selector(keyBoardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    deinit {
        notificationCenter.removeObserver(self)
    }
    
    func keyboardState(for userInfo:[AnyHashable: Any], in v: UIView?)-> CGRect {
        var rold = userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as! CGRect
        var rnew = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as! CGRect

        if let v = v {
            let co = UIScreen.main.coordinateSpace
            rold = co.convert(rold, to: v)
            rnew = co.convert(rnew, to: v)

            return rnew.intersection(v.bounds)
        }
        return .zero
    }

    @objc private func keyBoardWillShow(notification: Notification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect) {
            currentHeight = keyboardSize.height
            kbRect = keyboardSize
        }
    }

    @objc private func keyBoardWillHide(notification: Notification) {
        currentHeight = 0
        kbRect = .zero
    }
}
