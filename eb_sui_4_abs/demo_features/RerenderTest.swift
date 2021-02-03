//
//  StateTest.swift
//  eb_sui_4_abs
//
//  Created by Yao Wang on 2/2/21.
//  Copyright © 2021 yao. All rights reserved.
//

import SwiftUI

struct User {
    var username = ""
    var email = ""
}


struct RerenderTest: View {
    @State private var user: User = User(username: "Yao", email: "yao@apple.com")
    
    var body: some View {
        VStack {
            Text(user.username)
            Text(user.email)
            Button("Change field inside user object to re-render") {
                user.username += " Wang";
            }.padding().overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.purple, lineWidth: 5)
            )
            Button("Change user object to re-render") {
                user = User(username: user.username+"Chen", email: "chen@google.com")
            }.padding().overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.purple, lineWidth: 5)
            )
        }.onAppear {
            print(self.$user)
            // only render once, no matter how many re-render caused by @state change
        }
        
    }
}

struct RerenderTest_Previews: PreviewProvider {
    static var previews: some View {
        RerenderTest()
    }
}
