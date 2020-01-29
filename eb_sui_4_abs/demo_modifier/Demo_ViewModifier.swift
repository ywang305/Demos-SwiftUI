//
//  Demo_ViewModifier.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/23/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct Demo_ViewModifier: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).modifier(ErrorHeadlines())
    }
}

struct Demo_ViewModifier_Previews: PreviewProvider {
    static var previews: some View {
        Demo_ViewModifier()
    }
}

struct ErrorHeadlines: ViewModifier {
    func body(content: Content) -> some View {
        return content.padding()
            .font(.largeTitle)
            .foregroundColor(Color.black)
        .shadow(radius: 2)
            .background(Color.blue.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 10))
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black.opacity(0.2), lineWidth: 1))
    }
    
}
