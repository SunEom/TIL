//
//  TimerData.swift
//  SwiftUIDemo2
//
//  Created by 엄태양 on 2022/01/05.
//

import Foundation
import Combine

class TimerData : ObservableObject {
    @Published var timeCount = 0
    var timer: Timer?
    
    init() {
        timer = Timer.scheduledTimer(timeInterval: 1.0,
                                     target: self,
                                     selector: #selector(timerDidFire),
                                     userInfo: nil,
                                     repeats: true)
    }
    
    @objc func timerDidFire(){
        timeCount += 1
    }
    
    func resetCount(){
        timeCount = 0
    }
}
