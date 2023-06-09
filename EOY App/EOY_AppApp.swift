//
//  EOY_AppApp.swift
//  EOY App
//
//  Created by Varner, Sydney on 4/12/23.
//

import SwiftUI

@main
struct EOY_AppApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
