//
//  RatingPicker.swift
//  RatingPicker
//
//  Created by Варвара Уткина on 23.12.2024.
//

import SwiftUI

struct RatingPicker: View {
    
    @Binding var rating: Int
    
    var body: some View {
        HStack {
            ForEach(1 ..< 6) { index in
                Star(fill: fillingFor(index))
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

struct Star: View {
    let fill: Bool
    
    var body: some View {
        Image(systemName: fill ? "star.fill" : "star")
            .resizable()
            .frame(width: 40, height: 40)
            .foregroundStyle(.yellow)
            .frame(width: 52, height: 52)
    }
}

#Preview {
    RatingPicker(rating: .constant(3)).preferredColorScheme(.dark)
}
