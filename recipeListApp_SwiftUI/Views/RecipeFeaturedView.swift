//
//  RecipeFeaturedView.swift
//  recipeListApp_SwiftUI
//
//  Created by Andrew Mullen on 2021-11-29.
//

import SwiftUI

struct RecipeFeaturedView: View {
    
    // Want the same recipeModel in both featured and list view -> Environmental obects modifier in the parent view
    
    @EnvironmentObject var model:RecipeModel
    @State var isDetailViewShowing = false
    
    var body: some View {
        // Wrap tab view in Geometry Reader
        VStack(alignment: .leading, spacing: 0){
            Text("Featured Recipes")
                .bold()
                .padding(.leading)
                .padding(.top, 40)
                .font(.largeTitle)
            
            GeometryReader { geo in
                    
                
                // Can also be used for swipeable views
                TabView {
                    
                    // Loop through each recipe
                    ForEach(0..<model.recipes.count) { index in
                        
                        if model.recipes[index].featured {
                            
                            // Recipe Card Button
                            Button(action: {
                                // What to do when card is picked
                                self.isDetailViewShowing = true
                            }, label: {
                                ZStack {
                                    // Create recipe card for each one that is featured
                                    Rectangle()
                                        .foregroundColor(.white)
                                
                                    VStack(spacing:0) {
                                        Image(model.recipes[index].image)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .clipped()
                                        Text(model.recipes[index].name)
                                            .padding(5)
                                            .foregroundColor(.black)

                                    }
                                }
                                .sheet(isPresented: $isDetailViewShowing , content: {
                                    // Show RecipeDetailView
                                    RecipeDetailView(recipe: model.recipes[index])
                                })
                                .buttonStyle(PlainButtonStyle())
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.black)
                                .frame(width: geo.size.width-40, height: geo.size.height-100, alignment: .center)
                                .cornerRadius(15)
                                .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5), radius: 10, x: -5, y:5)
                            })
                        }// End if statement
                    }// End ForEach
                }// End TabView
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                
            }// End Geometry Reader
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Preparation Time:")
                    .font(.headline)
                Text("1 hour")
                Text("Highlights")
                    .font(.headline)
                Text("Healthy, Hearty")
            }
            .padding([.leading, .bottom])
        }
    }// End Body
}// End RecipeFeaturedView()

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RecipeFeaturedView()
                .environmentObject(RecipeModel())
        }
    }
}
