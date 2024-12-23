//
//  ContentView.swift
//  RatingPicker
//
//  Created by Варвара Уткина on 23.12.2024.
//

import SwiftUI

struct MainView: View {
    @State var viewModel = MainViewModel.shared
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack(spacing: 32) {
                ForEach(viewModel.movies, id: \.id) { movie in
                    Text(movie.title)
                    
                    RatingPicker(
                        rating: movie.rating,
                        imageName: movie.icon ?? "star",
                        color: movie.color ?? .blue,
                        action: { rating in
                            viewModel.setRatingTo(rating, for: movie.id)
                        }
                    )
                }
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    MainView()
}
