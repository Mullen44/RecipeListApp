//
//  ContentView.swift
//  recipeListApp_SwiftUI
//
//  Created by Andrew Mullen on 2021-11-22.
//

import SwiftUI

struct RecipeListView: View {
    
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("All Recipes")
                    .bold()
                    .padding(.top, 40)
                    .font(.largeTitle)
                
                ScrollView {
                    LazyVStack(alignment: .leading) {
                        ForEach(model.recipes) { r in
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
                                            .foregroundColor(.black)
                                    }// End HStack
                                }// End Label
                            )// End Navigation Link
                        }// End ForEach
                        //.navigationBarTitle("All Recipes")
                        .navigationBarHidden(true)
                    }// End Lazy VStack
                }// End ScrollView
            }// EndVStack
            .padding(.leading)
            
        }// End Navigation View
    }// End body
}// End RecipeListVIew
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
            .environmentObject(RecipeModel())
    }
}
