//
//  Movie.swift
//  RatingPicker
//
//  Created by Варвара Уткина on 23.12.2024.
//

import SwiftUI

struct Movie: Identifiable {
    let id = UUID()
    let title: String
    let color: Color?
    let icon: String?
    let rating: Int
    
    init(title: String, color: Color? = nil, icon: String? = nil, rating: Int) {
        self.title = title
        self.color = color
        self.icon = icon
        self.rating = rating
    }
}

extension Movie {
    static var examples: [Movie] {
        [
            Movie(
                title: "Амели",
                color: .yellow,
                rating: 3
            ),
            Movie(
                title: "Стажёр",
                icon: "app",
                rating: 4
            ),
            Movie(
                title: "Любось на кончиках пальцев",
                color: .red,
                icon: "heart",
                rating: 5
            )
        ]
    }
}
