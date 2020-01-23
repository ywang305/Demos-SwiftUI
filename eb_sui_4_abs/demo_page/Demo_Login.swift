//
//  Demo_Login.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/22/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct Demo_Login: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            WellcomeText()
            TextField("Username", text: $username)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10.0)
                .padding(.bottom, 20)
            
            SecureField("Password", text: $password)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10.0)
                .padding(.bottom, 20)
        }.padding()
    }
}

struct Demo_Login_Previews: PreviewProvider {
    static var previews: some View {
        Demo_Login()
    }
}

struct WellcomeText: View {
    var body: some View {
        Text("Login")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}
