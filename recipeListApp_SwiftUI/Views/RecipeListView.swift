//
//  ContentView.swift
//  recipeListApp_SwiftUI
//
//  Created by Andrew Mullen on 2021-11-22.
//

import SwiftUI

struct RecipeListView: View {
    
    // Reference the view model
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        NavigationView {
            List(model.recipes) { r in
                NavigationLink(
                    destination: RecipeDetailView(recipe: r),
                    label: {
                        HStack(spacing: 20) {
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width:50, height: 50, alignment:.center)
                                .clipped()
                                .cornerRadius(5)
                            Text(r.name)
                        }// End HStack
                    }// End Label
                    )
            }// End List
            .navigationBarTitle("All Recipes")
        }
    }// End body
}// End RecipeListVIew

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
