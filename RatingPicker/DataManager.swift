//
//  DataManager.swift
//  RatingPicker
//
//  Created by Варвара Уткина on 23.12.2024.
//

import Foundation

final class DataManager {
    
    static let shared = DataManager()
    
    var movies: [Movie] = []
    
    private init() {
        fetchMovies()
    }
    
    private func fetchMovies() {
        movies = Movie.examples
    }
}
