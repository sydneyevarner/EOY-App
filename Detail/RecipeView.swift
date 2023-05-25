//
//  RecipeView.swift
//  EOY App
//
//  Created by Varner, Sydney on 5/9/23.
//

import SwiftUI

struct RecipeView: View {
    var recipe: Recipe
    var body: some View {
        ScrollView {
            GeometryReader { geo in
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: geo.size.width * 1.0, height: 10)

                
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.07))
                    .frame(maxWidth: CGFloat.infinity, maxHeight: CGFloat.infinity)
            }
            }
            .frame(height: 300)
            .background(LinearGradient (gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            VStack(spacing: 10) {
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                VStack(alignment: .leading, spacing: 20) {
                    if !recipe.description.isEmpty{
                        Text(recipe.description)
                    }
                    
                    if !recipe.ingredients.isEmpty{
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Ingredients")
                                .font(.headline)
                            
                                Text(recipe.ingredients)
                                .lineSpacing(5)
                            }
                        }
                    if !recipe.directions.isEmpty{
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Directions")
                                .font(.headline)
                            
                            Text(recipe.directions)
                                .lineSpacing(5)

                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[0])
    }
}
