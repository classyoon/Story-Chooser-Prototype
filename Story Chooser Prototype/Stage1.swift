//
//  Stage1Sword.swift
//  Story Chooser Prototype
//
//  Created by Conner Yoon on 9/3/22.
//

import SwiftUI
var successfulSwordStage1 = "Your sword deftly cleaves the enemy in two"
var failedSwordStage1 = "Your clumsy sword stroke glances off the armor of your enemy"
struct Stage1Sword: View {
    @State var result = swordSkill >= 1 ? successfulSwordStage1 : failedSwordStage1
    @ViewBuilder
    func determineOutCome() -> some View{
        if swordSkill >= 1{
            Victory()
        }
        else{
            Defeat()
        }
    }

    var body: some View {
        VStack{
            Text("🗡").font(.title)
            Text(result).padding()
            NavigationLink {
                determineOutCome()
            } label: {
                Text("Next")
            }
            
        }
    }
}

struct Stage1Sword_Previews: PreviewProvider {
    static var previews: some View {
        Stage1Sword()
    }
}
