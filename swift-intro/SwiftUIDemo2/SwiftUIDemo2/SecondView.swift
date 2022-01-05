//
//  SecondView.swift
//  SwiftUIDemo2
//
//  Created by 엄태양 on 2022/01/05.
//

import Foundation
import SwiftUI

struct SecondView : View {
    @EnvironmentObject var timerData: TimerData
    
    
    var body: some View {
        VStack {
            Text("Second View")
                .font(.largeTitle)
            Text("Timer Count = \(timerData.timeCount)")
                .font(.headline)
        }
        .padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView().environmentObject(TimerData())
    }
}
