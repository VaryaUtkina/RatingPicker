//
//  RatingPicker.swift
//  RatingPicker
//
//  Created by Варвара Уткина on 23.12.2024.
//

import SwiftUI

struct RatingPicker: View {
    
    @Binding var rating: Int
    
    var imageName = "star"
    var color = Color.yellow
    
    var body: some View {
        HStack {
            ForEach(1 ..< 6) { index in
                Symbol(
                    fill: fillingFor(index),
                    imageName: imageName,
                    color: color
                )
                .frame(width: 40, height: 40)
                .onTapGesture {
                    rating = index
                }
            }
        }
    }
    
    private func fillingFor(_ index: Int) -> Bool {
        index <= rating
    }
}

struct Symbol: View {
    let fill: Bool
    
    var imageName = "star"
    var color = Color.yellow
    
    private let size: CGFloat = 24
    
    var body: some View {
        Image(systemName: fill ? "\(imageName).fill" : "\(imageName)")
            .resizable()
            .frame(width: size, height: size)
            .foregroundStyle(color)
    }
}

#Preview {
    RatingPicker(rating: .constant(3)).preferredColorScheme(.dark)
}
