//
//  MainViewModel.swift
//  RatingPicker
//
//  Created by Варвара Уткина on 23.12.2024.
//

import Foundation

final class MainViewModel: ObservableObject {
    
    @Published var rating = 3
    @Published var movies: [Movie] = []
    
    private let dataManager = DataManager.shared
    static let shared = MainViewModel()
    private init() {
        movies = dataManager.movies
    }
    
    func setRatingTo(_ newValue: Int) {
        rating = newValue
    }
}
