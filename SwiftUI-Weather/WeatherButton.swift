//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Ahmed Ali on 04/05/2024.
//

import SwiftUI
// MARK: - Weather Button

struct WeatherButton: View {
    let title: String
    let backgroundColor: Color
    let textColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor.gradient)
            .foregroundStyle(textColor)
            .font(
                .system(
                    size: 20,
                    weight: .bold,
                    design: .default
                )
            )
            .cornerRadius(10)
    }
}
