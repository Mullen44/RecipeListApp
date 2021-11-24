//
//  RecipeModel.swift
//  recipeListApp_SwiftUI
//
//  Created by Andrew Mullen on 2021-11-22.
//

import Foundation

class RecipeModel: ObservableObject {
    
    //  Declare Property
    @Published var recipes = [Recipe]()
    
    // Methods
    init() {
        
        // Create an instance of data service and get the data
        self.recipes = DataService().getLocalData() // self.recipes = DataService.getLocalData() works if you make the method a @static method
        
    }
    
}

