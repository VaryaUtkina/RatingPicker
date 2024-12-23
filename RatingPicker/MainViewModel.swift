//
//  MainViewModel.swift
//  RatingPicker
//
//  Created by Варвара Уткина on 23.12.2024.
//

import Foundation
import Observation

@Observable
final class MainViewModel: ObservableObject {
    
    var movies: [Movie] = []
    
    private let dataManager = DataManager.shared
    
    static let shared = MainViewModel()
    
    private init() {
        movies = dataManager.movies
    }
    
    func setRatingTo(_ rating: Int, for movieID: UUID) {
        movies = movies.map { movie in
            var newMovie = movie
            if newMovie.id == movieID {
                newMovie.rating = rating
            }
            return newMovie
        }
    }
}
