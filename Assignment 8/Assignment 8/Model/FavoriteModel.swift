//
//  FavoriteModel.swift
//  Assignment 8
//
//  Created by Garrett Li on 7/14/25.
//



import Foundation

protocol Favoritable : Identifiable {
    var id : Int { get }
    var isFavorite : Bool { get set }
    var searchableText : String { get }
}

struct CityModel : Favoritable {
    let id: Int
    let cityName: String
    let cityImage: String
    var isFavorite: Bool = false
    
    var searchableText: String {
        return cityName
    }
}

struct HobbyModel : Favoritable {
    let id: Int
    let hobbyName: String
    let hobbyIcon: String
    var isFavorite: Bool = false
    
    var searchableText: String {
        return hobbyName
    }
}

struct BookModel : Favoritable {
    let id: Int
    let bookTitle: String
    let bookAuthor: String
    var isFavorite: Bool = false
    
    var searchableText: String {
        return bookTitle + " " + bookAuthor
    }
}
