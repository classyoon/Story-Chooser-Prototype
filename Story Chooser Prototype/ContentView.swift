//
//  ContentView.swift
//  Story Chooser Prototype
//
//  Created by Conner Yoon on 9/1/22.
//

import SwiftUI
var swordSkill = 0
var bowSkill = 0

enum SkillLevel: Int, CaseIterable, Identifiable {
    case low=0, medium, high
    var text : String {
        switch self {
            
        case .low:
            return "Unfamiliar"
        case .medium:
            return "Rookie"
        case .high:
            return "Expert"
        }
    }
    var id : Self{ self }
}

struct ContentView: View {
    @State var displayedSwordSkill = 0
    @State var displayedBowSkill = 0
    var body: some View {
        
        NavigationView{
            
            List{
     
                
                Section("Developer Controls"){
                Stepper("Enter your sword level : \(displayedSwordSkill)", onIncrement: {
                    displayedSwordSkill += 1
                    swordSkill = displayedSwordSkill
                }, onDecrement: {
                    displayedSwordSkill -= 1
                    swordSkill = displayedSwordSkill
                })
                Stepper("Enter your bow level : \(displayedBowSkill)", onIncrement: {
                    displayedBowSkill += 1
                    bowSkill = displayedBowSkill
                }, onDecrement: {
                    displayedBowSkill -= 1
                    bowSkill = displayedBowSkill
                })
                }
                Section("Functionless, Apperance only 0...2"){
                    Picker ("Sword Skill : ", selection: $displayedSwordSkill){
                        ForEach(SkillLevel.allCases){ imp in
                            Text(imp.text).tag(imp.rawValue)
                        }
                    }
                    Picker ("Bow Skill : ", selection: $displayedBowSkill){
                        ForEach(SkillLevel.allCases){ imp in
                            Text(imp.text).tag(imp.rawValue)
                        }
                    }

                }
                Section("Choose your own adventure 👑"){
                    Text("You are a dog owner armed with a sword and bow. You were returning from the store with dog food when you are confronted by a big monster. You must fight...")
                        .padding()
                
                NavigationLink {
                    Stage1Sword()
                } label: {
                    Text("Use your sword")
                }
                NavigationLink {
                    Stage1_Bow()
                } label: {
                    Text("Use your bow")
                }
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
