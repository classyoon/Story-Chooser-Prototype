//
//  Stage1Sword.swift
//  Story Chooser Prototype
//
//  Created by Conner Yoon on 9/3/22.
//

import SwiftUI

struct Stage1Sword: View {
    @EnvironmentObject var vm : SkillsViewModel

    @ViewBuilder
    func determineOutCome() -> some View{
        if vm.swordWinCondition {
            Victory()
        }
        else{
            Defeat()
        }
    }

    var body: some View {
        VStack{
            Text("🗡").font(.title)
            Text(vm.bowResultString).padding()
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
            .environmentObject(SkillsViewModel())
    }
}
