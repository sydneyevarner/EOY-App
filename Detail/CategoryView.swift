//
//  CategoryView.swift
//  EOY App
//
//  Created by Varner, Sydney on 5/12/23.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    var category: Category
    
    //computed property
    var recipes: [Recipe] {
        return recipesVM.recipes.filter{ $0.category == category.rawValue}
    }
    
    var body: some View {
        ScrollView {
            RecipeList(recipes: recipes)
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.snack)
            .environmentObject(RecipesViewModel())
    }
}
