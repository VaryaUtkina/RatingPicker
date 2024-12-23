//
//  ContentView.swift
//  RatingPicker
//
//  Created by Варвара Уткина on 23.12.2024.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewModel = MainViewModel.shared
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack(spacing: 32) {
                ForEach(viewModel.movies, id: \.id) { movie in
                    Text(movie.title)
                    
                    RatingPicker(
                        rating: movie.rating,
                        imageName: movie.icon ?? "star",
                        color: movie.color ?? .blue
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
