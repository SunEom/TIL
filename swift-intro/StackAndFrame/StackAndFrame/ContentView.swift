//
//  ContentView.swift
//  StackAndFrame
//
//  Created by 엄태양 on 2022/01/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        // Example1
//        HStack {
//            Image(systemName: "goforward.10")
//            Image(systemName: "goforward.15")
//            Image(systemName: "goforward.30")
//        }
        
        
//        // Eaxmple2
//        VStack{
//            Text("Financial Results")
//                .font(.title)
//
//            HStack {
//                Text("Q1 Sales")
//                    .font(.headline)
//
//                VStack {
//                    Text("January")
//                    Text("February")
//                    Text("March")
//                }
//
//                VStack {
//                    Text("$1000")
//                    Text("$200")
//                    Text("$3000")
//                }
//            }
//        }
        
//        //Example 3
//        HStack (alignment: .top){
//            Text("Q1 Sales")
//                .font(.headline)
//            Spacer()
//            VStack(alignment: .leading){
//                Text("January")
//                Text("February")
//                Text("March")
//            }
//            Spacer()
//        }

//        //Example 4
//        VStack(alignment: .center, spacing: 15) {
//            Text("Financial Results")
//                .font(.title)
//            Text("Hello world!")
//                .padding()
//            Text("Hello world!!!")
//                .padding(10)
//            Text("Hello world!!!!!!")
//                .padding(.top, 20)
//        }
    
//        //Eaxmple 5
//        VStack(alignment: .center, spacing: 15){
//            Text("Financial Results")
//                .font(.title)
//
//            HStack(alignment: .top){
//                Text("Q1 Sales")
//                    .font(.headline)
//                Spacer()
//                VStack(alignment: .leading){
//                    Text("January")
//                    Text("February")
//                    Text("March")
//                }
//                Spacer()
//                VStack(alignment: .leading){
//                    Text("$10000")
//                    Text("$200")
//                    Text("$3000")
//                }
//                .padding(5)
//            }
//            .padding(5)
//        }
        
//        //Example 6
//        VStack {
//            Group {
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//            }
//            Group {
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//            }
//        }
        
//        //Example 7
//        HStack {
//            Image(systemName: "airplane")
//            Text("Flight times: ")
//            Text("London")
//                .layoutPriority(1)
//        }
//        .font(.largeTitle)
//        .lineLimit(1)
        
//        //Example 8
//        Text("Hello World! how are you?")
//            .font(.largeTitle)
//            .frame(minWidth:100, maxWidth: .infinity, minHeight:100, maxHeight: .infinity)
//            .border(Color.black)
//            .edgesIgnoringSafeArea(.all)
        
        
        GeometryReader { geometry in
            VStack {
                Text("Hello Worldm how are you?")
                    .font(.largeTitle)
                    .frame(width: geometry.size.width/2, height: (geometry.size.height/4)*3)
                Text("Goodbye World")
                    .font(.largeTitle)
                    .frame(width: geometry.size.width/3, height: geometry.size.height/4)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
