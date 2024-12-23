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
            
            VStack {
                Text("\(viewModel.rating)")
                    .font(.system(size: 78))
                    .bold()
                    .foregroundStyle(Color.white)
                
                RatingPicker(rating: $viewModel.rating)
            }
        }
    }
}

#Preview {
    MainView()
}
