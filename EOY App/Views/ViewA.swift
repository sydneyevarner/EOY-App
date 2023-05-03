//
//  ViewA.swift
//  EOY App
//
//  Created by Varner, Sydney on 4/12/23.
//

import SwiftUI

struct Recipe: Identifiable {
    let id = UUID()
    var name: String
    var ingredients: String
    var instructions: String
}


struct RecipeView: View {
    @Environment(\.dismiss) var dismiss
    @State private var name = ""
        @State private var ingredients = ""
        @State private var instructions = ""

    var body: some View {
        NavigationView {
                    Form {
                        Section(header: Text("Recipe Details")) {
                            TextField("Recipe Name", text: $name)
                            TextField("Ingredients", text: $ingredients)
                            TextEditor(text: $instructions)
                        }
                        
                        Section {
                            Button("Save Recipe") {
                                let recipe = Recipe(name: name, ingredients: ingredients, instructions: instructions)
                                // Do something with the new recipe, such as save it to a database or array
                            }
                            Button("Done"){
                                dismiss()
                            }
                        }
                    }
                    .navigationTitle("Add Recipe")
                }
            }
    }

struct RecipeListView: View {
    @State private var recipes = [
        Recipe(name: "Spaghetti", ingredients: "Pasta, Sauce, Meat", instructions: "Cook pasta, brown meat, mix with sauce."),
        Recipe(name: "Chicken Stir Fry", ingredients: "Chicken, Vegetables, Soy Sauce", instructions: "Cook chicken, add vegetables, stir in soy sauce."),
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(recipes) { recipe in
                    NavigationLink(destination: RecipeDetailView(recipe: recipe)) {
                        Text(recipe.name)
                    }
                }
            }
            .navigationTitle("Recipes")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        self.showAddRecipeView()
                    }) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
    
    func showAddRecipeView() {
        let addRecipeView = RecipeView()
        let hostingController = UIHostingController(rootView: addRecipeView)
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let window = windowScene.windows.first {
            window.rootViewController?.present(hostingController, animated: true)
        }
    }
}



struct RecipeDetailView: View {
    let recipe: Recipe
    
    var body: some View {
        VStack {
            Text(recipe.name)
                .font(.title)
                .padding()
            Text("Ingredients:")
                .font(.headline)
                .padding(.bottom, 5)
            Text(recipe.ingredients)
                .padding()
            Text("Instructions:")
                .font(.headline)
                .padding(.bottom, 5)
            Text(recipe.instructions)
                .padding()
            Spacer()
        }
        .navigationTitle("Recipe Details")
    }
}

struct ViewA: View {
    @State private var AddRecipe = false
    
    var body: some View {
        //AddRecipe.toggle()
        Button(action: {
            print ("show")
            AddRecipe.toggle()
        }) {
                Image(systemName: "plus")
                    .buttonBorderShape(.roundedRectangle)
                    .fontWeight(.bold)
                    .font(.title)
                    .padding(40)
                    .background(Color.white)
                    .foregroundColor(.gray)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 4)
                    )
        }
        .sheet(isPresented: $AddRecipe){
            RecipeView()
        }
    }
}


struct ViewA_Previews: PreviewProvider {
    static var previews: some View {
        ViewA()
    }
}
