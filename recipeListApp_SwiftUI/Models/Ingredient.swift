//
//  Ingredient.swift
//  recipeListApp_SwiftUI
//
//  Created by Andrew Mullen on 2021-11-24.


import Foundation


class Ingredient: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var num:Int?
    var denom:Int?
    var unit:String?
}
