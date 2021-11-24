//
//  DataService.swift
//  recipeListApp_SwiftUI
//
//  Created by Andrew Mullen on 2021-11-22.
//

import Foundation


class DataService {
    
    func getLocalData() -> [Recipe] {
        
        // Parse Local json file
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // Check if pathString is not nil otherwise... return empty recipe array
        guard pathString != nil else {
            return [Recipe]()
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            
            // Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            
            do {
                let recipeData = try decoder.decode([Recipe].self, from:data)
                
                // Add unique IDs
                for r in recipeData {
                    r.id = UUID()
                }
                
                // Return recipes
                return recipeData
            }
            catch {
                print(error)
            }
            
        }
        catch {
            print(error)
        }
        
        return [Recipe]()
    

    }
    
}

