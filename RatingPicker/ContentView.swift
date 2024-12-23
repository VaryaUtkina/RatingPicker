//
//  ContentView.swift
//  RatingPicker
//
//  Created by Варвара Уткина on 23.12.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var movieRating = 3
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                Text("\(movieRating)")
                    .font(.system(size: 78))
                    .bold()
                    .foregroundStyle(Color.white)
                
                RatingPicker(rating: $movieRating)
            }
        }
    }
}

#Preview {
    ContentView()
}
