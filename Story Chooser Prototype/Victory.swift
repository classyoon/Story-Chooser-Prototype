//
//  Victory.swift
//  Story Chooser Prototype
//
//  Created by Conner Yoon on 9/3/22.
//

import SwiftUI

struct Victory: View {
    var body: some View {
        List{
            Text("Good Ending").font(.title)
                 Text("Victorious, you make it home to your dog. 🐶. Doggo is very happy!!!!!")
            NavigationLink {
                ContentView()
            } label: {
                Text("Try For Other Ending (Very Glitchy use Back instead)")
            }
        }
    }
}

struct Victory_Previews: PreviewProvider {
    static var previews: some View {
        Victory()
    }
}
