//
//  ContentView.swift
//  State Observable Environment
//
//  Created by 엄태양 on 2022/01/05.
//

import SwiftUI
import Foundation
import Combine

struct ContentView: View {
    
//    //Example 1
//    @State private var wifiEnabled = true
//    @State private var userName = ""
//
//
//    var body: some View {
//        VStack {
//            Toggle(isOn: $wifiEnabled){
//                Text("Enable Wi-Fi")
//            }
//
//            TextField("Enter user name", text: $userName)
//            Text(userName)
//            WifiImageView(wifiEnabled: $wifiEnabled)
//        }
//    }
    
    @ObservedObject var demoData : DemoData
    
    var body: some View {
        Text("\(demoData.currentUser), you are user number \(demoData.userCount)")
    }
}

struct WifiImageView : View {
    
    @Binding var wifiEnabled: Bool
    
    var body: some View {
        Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
    }
}

class DemoData: ObservableObject {
    @Published var userCount = 0
    @Published var currentUser = ""
    
    init(){
        // data initialize
        updateData()
    }
    
    func updateData(){
        print("Data is updated")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(demoData: DemoData())
    }
}
