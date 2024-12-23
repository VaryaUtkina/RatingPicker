//
//  MainViewModel.swift
//  RatingPicker
//
//  Created by Варвара Уткина on 23.12.2024.
//

import Foundation

final class MainViewModel: ObservableObject {
    
    @Published var rating = 3
    
    static let shared = MainViewModel()
    private init() {}
    
    func setRatingTo(_ newValue: Int) {
        rating = newValue
    }
}
