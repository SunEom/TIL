//
//  ContentView.swift
//  ProjectDemo
//
//  Created by 엄태양 on 2022/01/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
//        // Example1
//        VStack{
//            VStack {
//                Text("Text1")
//                Text("Text2")
//                HStack {
//                    Text("Text3")
//                    Text("Text4")
//                }
//            }
//            Text("Text5")
//        }

        
//        // Example2
//        Text("Hello, ") + Text("how ") + Text("are you?")
        
        
//        // Example3
//        var myString = "welcome to SwiftUI"
//
//        return VStack {
//            Text("Hello, World!")
//            Text("Goodbye, World!")
//        }
        
//        // Example4
//        VStack {
//            VStack {
//                Text("Text 1")
//                Text("Text 2")
//                MyHStackView()
//            }
//            Text("Text 5")
//        }
        
//        VStack {
//            Text("Main Title")
//                .font(.largeTitle)
//            HStack {
//                Text("Car Image")
//                Image(systemName: "car.fill")
//            }
//        }
        
//        // Example 5
//        let carStack = HStack {
//            Text("Car Image")
//            Image(systemName: "car.fill")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//        }
//
//        return VStack {
//            Text("Main Title")
//                .font(.headline)
//                .foregroundColor(.red)
//            carStack
//            MyHStackView()
//                .font(.largeTitle)
//            Text("Sample Text")
//                .font(.custom("Copperplate", size: 40))
//                .padding()
//                .border(Color.black)
//            Text("Text 1")
//                .modifier(StandardTitle())
//            Text("Text 2")
//                .modifier(StandardTitle())
//
//        }
//
//
//    }
        

        
//        // Example 6
//        VStack{
//            Button(action: buttonPressed){
//                Text("Click Me")
//            }
//
//            Button(action: {print("hello")}){
//                Image(systemName: "square.and.arrow.down")
//            }
//            Text("Hello world!")
//                .onAppear(perform: {print("Appear!")})
//                .onDisappear(perform: {print("Disappear!")})
//        }
        
        VStack{
            MyVStack()
            MyVStack2 {
                Text("Text 1")
                Text("Text 2")
                HStack {
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star")
                }
            }
        }
        
    }
}
    
func buttonPressed(){
    print("Pressed")
}

struct MyVStack: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Text Item 1")
            Text("Text Item 2")
            Text("Text Item 3")
        }
        .font(.largeTitle)
    }
}

struct MyVStack2<Content: View>: View {
    let content: () -> Content
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
        VStack(spacing: 10){
            content()
        }
        .font(.largeTitle)
    }
}




struct MyHStackView: View {
    var body: some View {
        HStack {
            Text("Text 3")
            Text("Text 4")
        }
    }
}

struct StandardTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .background(Color.white)
            .border(Color.gray, width: 0.2)
            .shadow(color: Color.black, radius: 5, x: 0, y: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
