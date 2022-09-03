//
//  ContentView.swift
//  Story Chooser Prototype
//
//  Created by Conner Yoon on 9/1/22.
//

import SwiftUI

struct ContentView: View {
    @State var thing = 0
    var body: some View {
        
        NavigationView{
            List{
               
                Stepper("Enter your number : \(thing)", onIncrement: {
                    thing += 1
                }, onDecrement: {
                    thing -= 1
                })
                Text("Hello, world!")
                    .padding()
                NavigationLink {
                    Stage1()
                } label: {
                    Text("Progress")
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
