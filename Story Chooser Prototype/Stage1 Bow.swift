//
//  Stage1 Bow.swift
//  Story Chooser Prototype
//
//  Created by Conner Yoon on 9/3/22.
//

import SwiftUI
var successfulBowStage1 = "Your arrow flies true and strikes the enemy"
var failedBowStage1 = "Your arrow wobbles through the air before landing harmlessly on the ground in front of the enemy"
struct Stage1_Bow: View {
    @EnvironmentObject var vm: SkillsViewModel
    
//    @State var result = vm.bowSkill >= 1 ? successfulBowStage1 : failedBowStage1
    @ViewBuilder
    func determineOutCome() -> some View{
        if vm.bowSkill >= 1{
            Victory()
        }
        else{
            Defeat()
        }
    }
    var body: some View {
        VStack{
            Text("🏹").font(.title)
            Text(vm.bowResultString).padding()
            NavigationLink {
                determineOutCome()
            } label: {
                Text("Next")
            }
            
        }
    }
}

struct Stage1_Bow_Previews: PreviewProvider {
    static var previews: some View {
        Stage1_Bow()
            .environmentObject(SkillsViewModel())
    }
}
