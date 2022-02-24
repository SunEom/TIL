//
//  ContentView.swift
//  NetflixStyleSampleApp
//
//  Created by 엄태양 on 2022/02/24.
//

import SwiftUI

struct ContentView: View {
    let titles = ["Neflix Sample App"]
    var body: some View {
        NavigationView {
            List(titles, id : \.self) {
                let netflixVC = HomeViewControllerRepresentable()
                    .navigationBarHidden(true)
                    .edgesIgnoringSafeArea(.all)
                NavigationLink($0, destination: netflixVC)
            }
            .navigationTitle("SwiftUI to UIKit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
