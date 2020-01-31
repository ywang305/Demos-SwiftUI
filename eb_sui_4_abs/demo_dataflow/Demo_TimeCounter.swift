//
//  Demo_TimeCounter.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/30/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI
import Combine

class TimeCounter: ObservableObject {
    let objectWillChange = PassthroughSubject<TimeCounter, Never>()
    var timer: Timer?
    var counter = 0
    
    @objc func updateCounter(){
        counter+=1
        objectWillChange.send(self)
    }
    
    init() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    func killTimer() {
        timer?.invalidate()
        timer = nil
    }
}

struct Demo_TimeCounter: View {
    @ObservedObject var timer = TimeCounter()
    
    
    var body: some View {
        Text(String(timer.counter)).background(Color.yellow.opacity(0.5)).onTapGesture {
            self.timer.killTimer()
        }
    }
}

struct Demo_TimeCounter_Previews: PreviewProvider {
    static var previews: some View {
        Demo_TimeCounter()
    }
}
