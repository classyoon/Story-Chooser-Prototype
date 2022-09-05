//
//  Story_Chooser_PrototypeApp.swift
//  Story Chooser Prototype
//
//  Created by Conner Yoon on 9/1/22.
//

import SwiftUI

@main
struct Story_Chooser_PrototypeApp: App {
    @StateObject var skillsVM = SkillsViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(skillsVM)
        }
    }
}
/**
 NAVIGATION STACK
 */
