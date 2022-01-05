//
//  SwiftUIDemo2App.swift
//  SwiftUIDemo2
//
//  Created by 엄태양 on 2022/01/05.
//

import SwiftUI

@main
struct SwiftUIDemo2App: App {
    var body: some Scene {
        WindowGroup {
            let timerData = TimerData()
            ContentView().environmentObject(timerData)
        }
    }
}
