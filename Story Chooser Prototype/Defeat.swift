//
//  Defeat.swift
//  Story Chooser Prototype
//
//  Created by Conner Yoon on 9/3/22.
//

import SwiftUI

struct Defeat: View {
    var body: some View {
        List{
            Text("Bad Ending 😭").font(.title)
            Text("You were defeated and had to run. You made it home, but you left the doggo food. Your doggo goes hungry")
            NavigationLink {
                ContentView()
            } label: {
                Text("Try Again (Very Glitchy use Back instead)")
            }
        }
    }
}

struct Defeat_Previews: PreviewProvider {
    static var previews: some View {
        Defeat()
    }
}
