//
//  Assignment_8App.swift
//  Assignment 8
//
//  Created by Garrett Li on 7/13/25.
//

import SwiftUI

@main
struct FavoritesApp: App {
    
    @StateObject private var favoritesViewModel = FavoritesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(favoritesViewModel)
        }
    }
}
