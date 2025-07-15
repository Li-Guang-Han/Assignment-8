//
//  ContentView.swift
//  Assignment 8
//
//  Created by Garrett Li on 7/13/25.
//


import SwiftUI

enum TabSelections {
    case home
    case favorites
    case settings
}

struct ContentView: View {
    
    @State private var selection: TabSelections = .home
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false
    
    var body: some View {
        TabView(selection: $selection) {
            Tab("Home", systemImage: "square.grid.2x2", value: .home) {
                HomeView()
            }
            Tab("Favorites", systemImage: "star.fill", value: .favorites) {
                FavoritesView()
            }
            Tab("Settings", systemImage: "gearshape", value: .settings) {
                SettingsView()
            }
        }
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}

#Preview {
    ContentView()
        .environmentObject(FavoritesViewModel())
}
