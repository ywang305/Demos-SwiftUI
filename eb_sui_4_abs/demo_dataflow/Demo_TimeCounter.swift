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
    let objectWillChange = PassthroughSubject<Void, Never>()
    var timer: Timer?
    var counter = 0
    
    var timer2: Timer?
    var counter2 = 0 {
        didSet {
            self.objectWillChange.send()
        }
    }
    
    var counter3 = 100
    
//    @objc func updateCounter(){
//        counter+=1
//        objectWillChange.send(self)  // publish new shit
//    }
    
    init() {
//        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
        timer2 = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            self.counter2 += 1
            
            self.counter3 += 1
            self.objectWillChange.send()
        }
    }
    
    func killTimer() {
        timer?.invalidate()
        timer = nil
        
        timer2?.invalidate()
        timer2 = nil
    }
}

struct Demo_TimeCounter: View {
    @ObservedObject var timer = TimeCounter()
    
    @State var cntStr: String = ""
    
    
    var body: some View {
        HStack(alignment: .center, spacing: 100) {
            Text(String(timer.counter)).background(Color.yellow.opacity(0.5)).onTapGesture {
                self.timer.killTimer()
            }
            
            Text(String(timer.counter2)).background(Color.blue.opacity(0.5)).onTapGesture {
                self.timer.killTimer()
            }
            Text(String(timer.counter3)).background(Color.blue.opacity(0.5)).onTapGesture {
                self.timer.killTimer()
            }
            
        }
        
    }
}

struct Demo_TimeCounter_Previews: PreviewProvider {
    static var previews: some View {
        Demo_TimeCounter()
    }
}
