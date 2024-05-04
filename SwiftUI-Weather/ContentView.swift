//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Ahmed Ali on 25/03/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack {
                CityTextView(text: "Cupertino CA")
                MainWeatherStatusView(
                    isNight: isNight,
                    temperature: 74
                )
                .padding(.bottom, 40)
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 72)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sunrise.fill", temperature: 60)
                    WeatherDayView(dayOfWeek: "TUE", imageName: "wind.snow", temperature: 50)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.bolt.fill", temperature: 40)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "snowflake", temperature: 20)
                }
                Spacer()
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(
                        title: "Change Day Time",
                        backgroundColor: .white,
                        textColor: .blue
                    )
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    let dayOfWeek: String
    let imageName: String
    let temperature: Int
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

// MARK: - BackgroundView
struct BackgroundView: View {

    var isNight: Bool
    var body: some View {
//        LinearGradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")],
//                       startPoint: .topLeading,
//                       endPoint: .bottomTrailing)
//        .ignoresSafeArea()
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.orange.gradient)
            .ignoresSafeArea()
    }
}
// MARK: -  City Text View

struct CityTextView: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(
                .system(
                    size: 32,
                    weight: .medium,
                    design: .default
                )
            )
            .foregroundStyle(.white)
    }
}
// MARK: - Main Weather Status View
struct MainWeatherStatusView: View {
   var isNight: Bool
    let temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: isNight ? "moon.circle.fill" : "cloud.sun.fill" )
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}
