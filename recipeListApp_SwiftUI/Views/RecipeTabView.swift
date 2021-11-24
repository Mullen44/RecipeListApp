//
//  RecipeTabView.swift
//  recipeListApp_SwiftUI
//
//  Created by Andrew Mullen on 2021-11-24.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        TabView {
            Text("Feature View")
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            RecipeListView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
        }
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
