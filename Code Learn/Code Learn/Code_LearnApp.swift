//
//  Code_LearnApp.swift
//  Code Learn
//
//  Created by Harper Bledsoe on 5/27/22.
//

import SwiftUI

@main
struct Code_LearnApp: App {
    
    @AppStorage("isLearning") var isLearning: Bool = false
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
