//
//  TabBar.swift
//  EOY App
//
//  Created by Varner, Sydney on 5/19/23.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            ViewA()
                .tabItem() {
                    Image(systemName: "books.vertical.fill")
                    Text("Recipes")
                }
            NewRecipeView()
                .tabItem {
                    Label("New", systemImage: "plus")
                }
            
            ViewC()
                .tabItem() {
                    Image(systemName: "list.bullet")
                    Text("Categories")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(RecipesViewModel())
    }
}
