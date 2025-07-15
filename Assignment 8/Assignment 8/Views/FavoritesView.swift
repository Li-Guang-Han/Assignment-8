//
//  FavoritesView.swift
//  Assignment 8
//
//  Created by Garrett Li on 7/13/25.
//


import SwiftUI

struct FavoritesView: View {
    
    @EnvironmentObject var favorites: FavoritesViewModel
    
    var body: some View {
        NavigationStack {
            List {
                // Cities Section
                if favorites.cities.contains(where: { $0.isFavorite }) {
                    Section(header: Text("Favorite Cities")) {
                        ForEach(favorites.cities.filter { $0.isFavorite }) { city in
                            CityCardView(city: city)
                                .environmentObject(favorites)
                        }
                        .onDelete { indices in
                            for index in indices {
                                let city = favorites.cities.filter { $0.isFavorite }[index]
                                favorites.toggleFavoriteCity(city: city)
                            }
                        }
                    }
                }
                
                // Hobbies Section
                if favorites.hobbies.contains(where: { $0.isFavorite }) {
                    Section(header: Text("Favorite Hobbies")) {
                        ForEach(favorites.hobbies.filter { $0.isFavorite }) { hobby in
                            HobbyRowView(hobby: hobby)
                                .environmentObject(favorites)
                        }
                        .onDelete { indices in
                            for index in indices {
                                let hobby = favorites.hobbies.filter { $0.isFavorite }[index]
                                favorites.toggleFavoriteHobby(hobby: hobby)
                            }
                        }
                    }
                }
                
                // Books Section
                if favorites.books.contains(where: { $0.isFavorite }) {
                    Section(header: Text("Favorite Books")) {
                        ForEach(favorites.books.filter { $0.isFavorite }) { book in
                            BookRowView(book: book)
                                .environmentObject(favorites)
                        }
                        .onDelete { indices in
                            for index in indices {
                                let book = favorites.books.filter { $0.isFavorite }[index]
                                favorites.toggleFavoriteBook(book: book)
                            }
                        }
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Favorites")
            .toolbar {
                EditButton()
            }
        }
    }
}

#Preview {
    FavoritesView()
        .environmentObject(FavoritesViewModel())
}

