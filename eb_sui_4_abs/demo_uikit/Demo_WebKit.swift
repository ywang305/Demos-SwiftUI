//
//  Demo_WebKit.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/23/20.
//  Copyright © 2020 yao. All rights reserved.
//
import WebKit
import SwiftUI

struct Demo_WebKit: View {
    var body: some View {
        NavigationView {
            WebViewer("https://www.microsoft.com")
            .navigationBarTitle("Web Browser")
        }
    }
}

struct Demo_WebKit_Previews: PreviewProvider {
    static var previews: some View {
        Demo_WebKit()
    }
}



struct WebViewer: UIViewRepresentable {
    
    let url : String
    init (_ url: String = "https://www.apple.com") {
        self.url = url
    }
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = URL(string: url) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
}
