//
//  WeatherModel.swift
//  learningConseptsOfSwiftUI
//
//  Created by Vaibhu Thakkar on 22/12/24.
//
import SwiftUI

struct WeatherModel: Identifiable {
    var id = UUID()
    var day: String
    var todaysWeather: WeatherEnum
    var temperature: Int
    var imageName: String {
        return getWeatherImageFor(weather: todaysWeather)
    }
    
    
    func getWeatherImageFor(weather: WeatherEnum) -> String {
        switch weather {
        case .cloudy:
            return "cloud.sun.fill"
        case .snowy:
            return "snow"
        case .sunny:
            return "sun.max.fill"
        case .windy:
            return "wind.snow"
        }
    }
}

enum WeatherEnum {
    case sunny, cloudy, windy, snowy
}

