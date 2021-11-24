//
//  RecipeDetailView.swift
//  recipeListApp_SwiftUI
//
//  Created by Andrew Mullen on 2021-11-22.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        
        ScrollView {
        
            VStack (alignment: .leading) {
                
                // MARK: Recipe Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                // MARK: Ingredients
                VStack(alignment: .leading) {
                    Text("Ingredients")
                        .font(.headline)
                        .padding([.bottom, .top], 5)
                    
                    ForEach (recipe.ingredients) { item in
                        Text("• " + item.name)
                    }
                }
                .padding(.horizontal)
                
                // MARK: Divider
                Divider()
                
                // MARK: Directions
                VStack(alignment: .leading) {
                    Text("Directions")
                        .font(.headline)
                        .padding([.bottom, .top], 5)
                    
                    ForEach(0..<recipe.directions.count, id: \.self) { index in
                        
                        Text(String(index+1) + ". " + recipe.directions[index])
                            .padding(.bottom, 5)
                    }
                }
                .padding(.horizontal)
            }
            
        }
        .navigationTitle(recipe.name)
    }
}

//struct RecipeDetailView: View {
//
//    // Property
//    var recipe:Recipe
//
//    var body: some View {
//        ScrollView{
//
//            VStack {
//                // Recipe name is in the navigation link title
////                Text(recipe.name)
////                    .font(.title)
////                    .fontWeight(.bold)
//                // MARK: Recipe Image
//                Image(recipe.image)
//                    .resizable()
//                    .scaledToFill()
//
//                // MARK: Ingredients
//                HStack {
//                    VStack(alignment: .leading) {
//                        Text("Ingredients")
//                            .font(.headline)
//                            .padding([.top, .bottom], 5)
//
//                        ForEach(recipe.ingredients, id: \.self) { item in
//                            Text("- "+item)
//                                //.padding(.bottom, 1)
//                        }//End ForEach
//                    }// End Ingredient VStack
//                    .padding(.horizontal, 10.0)
//                    Spacer()
//                }// End Ingredient HStack
//                // MARK: Directions
//                VStack(alignment: .leading) {
//                    Text("Directions")
//                        .font(.headline)
//                        .padding([.bottom, .top], 5)
//
//                    ForEach(0..<recipe.directions.count, id: \.self) {index in
//                        Text(String(index+1) + ". " + recipe.directions[index])
//                            .padding(.bottom, 5)
//                    }// End ForEach
//                }
//                .padding(.horizontal, 10.0)// End Direction VStack
//            }// End VStack
//            .navigationBarTitle(recipe.name)
//        }// End Scrollview
//        .navigationBarTitle(recipe.name)
//
//    }
//
//}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        // Create a dummy recipe and pass it so we can see a preview
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
