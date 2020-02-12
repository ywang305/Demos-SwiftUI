//
//  GlobalLocation.swift
//  eb_sui_4_abs
//
//  Created by yao on 2/9/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI
import Combine


class GlobalCoord: ObservableObject {
    let objectWillChange = PassthroughSubject<CGPoint, Never>()
    
    var loc: CGPoint? = nil {
        didSet {
            if let value = oldValue {
                self.objectWillChange.send(value)
            }
        }
    }
    
    var timer: Timer?
    
    init(){
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            self.loc = CGPoint(x: CGFloat.random(in: 0..<100), y: CGFloat.random(in: 10...200))
        }
    }
    
}
