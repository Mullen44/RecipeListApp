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
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
    }
}
