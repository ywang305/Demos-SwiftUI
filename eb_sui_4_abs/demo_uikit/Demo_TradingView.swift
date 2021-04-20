//
//  Demo_TradingView.swift
//  eb_sui_4_abs
//
//  Created by Yao Wang on 4/19/21.
//  Copyright © 2021 yao. All rights reserved.
//
import WebKit
import SwiftUI

struct Demo_TradingView: View {
    var body: some View {
        NavigationView {
            WebViewer2("https://www.binance.com/en/trade/BNB_BUSD")
            .navigationBarTitle("Web Browser")
        }
    }
}

struct Demo_TradingView_Previews: PreviewProvider {
    static var previews: some View {
        Demo_TradingView()
    }
}


struct WebViewer2: UIViewRepresentable {
    
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
