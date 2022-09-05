//
//  SkillsViewModel.swift
//  Story Chooser Prototype
//
//  Created by Conner Yoon on 9/4/22.
//

import Foundation
import Combine

class BowSkillVM: ObservableObject {
    @Published var bowSkill = 0
    @Published var bowResultString = ""
    
    private var cancellables = Set<AnyCancellable>()
    
    let successfulBowStage1 = "Your arrow flies true and strikes the enemy"
    let failedBowStage1 = "Your arrow wobbles through the air before landing harmlessly on the ground in front of the enemy"

    init(){
        $bowSkill.map {
            $0 > 1 ? self.successfulBowStage1 : self.failedBowStage1
        }
        .sink {
            self.bowResultString = $0
        }
        .store(in: &cancellables)
    }
}

class SkillsViewModel : ObservableObject {
    @Published var swordSkill = 0
    @Published var bowSkill = 0
    @Published var swordResultString : String = ""
    @Published var bowResultString = ""
    
    private var cancellables = Set<AnyCancellable>()
    
    let successfulSwordStage1 = "Your sword deftly cleaves the enemy in two"
    let failedSwordStage1 = "Your clumsy sword stroke glances off the armor of your enemy"
    let successfulBowStage1 = "Your arrow flies true and strikes the enemy"
    let failedBowStage1 = "Your arrow wobbles through the air before landing harmlessly on the ground in front of the enemy"
    
    init(){
        $bowSkill.map {
            $0 > 1 ? self.successfulBowStage1 : self.failedBowStage1
        }
        .sink {
            self.bowResultString = $0
        }
        .store(in: &cancellables)
        
        $swordSkill.map { skillNumber in
            skillNumber > 1 ? self.successfulSwordStage1 : self.failedSwordStage1
        }
        .sink { string in
            self.bowResultString = string
        }
        .store(in: &cancellables)
    }
}
