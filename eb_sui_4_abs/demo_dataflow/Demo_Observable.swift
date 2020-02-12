//
//  Demo_Observable.swift
//  eb_sui_4_abs
//
//  Created by yao on 2/6/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI
import Combine

//1. needs to conform to the ObservableObject protocol from the Combine framework
class Stopwatch: ObservableObject {
    // 2. This property publish any changes to its data, so that this change is updated in the view.
    @Published var counter: Int = 0
    
    var timer = Timer()
    
    // 3. keypoint how to use @Publisher! once self.counter changed, auto-published
    func start() {
        self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.counter += 1
        }
    }
    
    // 4.
    func stop() {
        timer.invalidate()
    }
    
    // 5.
    func reset() {
        counter = 0
        timer.invalidate()
    }
}

struct Demo_Observable: View {
    // 1.
    @ObservedObject var stopwatch = Stopwatch()
    
    var body: some View {
        VStack {
            HStack {
                // 2.
                Button(action: {
                    self.stopwatch.start()
                }) {
                    Text("Start")
                }
                
                Button(action: {
                    self.stopwatch.stop()
                }) {
                    Text("Stop")
                }
                Button(action: {
                    self.stopwatch.reset()
                }) {
                    Text("Reset")
                }
            }
            // 3.
            Text("\(self.stopwatch.counter)")
        }.font(.largeTitle)
    }
}

struct Demo_Observable_Previews: PreviewProvider {
    static var previews: some View {
        Demo_Observable()
    }
}
