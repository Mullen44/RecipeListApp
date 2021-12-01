//
//  RecipeHighlights.swift
//  recipeListApp_SwiftUI
//
//  Created by Andrew Mullen on 2021-12-01.
//

import SwiftUI

struct RecipeHighlights: View {
    
    var allHighlights = ""
    
    init(highlights:[String]) {
        // Loop through the highlights
        for index in 0..<highlights.count {
            // If this is the last item don't add a comma
            if index == highlights.count-1 {
                allHighlights += highlights[index]
            }
            else {
                allHighlights += highlights[index] + ", "
            }
        }
    }
    var body: some View {
        Text(allHighlights)
    }
}

struct RecipeHighlights_Previews: PreviewProvider {
    static var previews: some View {
        RecipeHighlights(highlights: ["Test", "test2", "test3"])
    }
}
