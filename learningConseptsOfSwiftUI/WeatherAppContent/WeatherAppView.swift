import SwiftUI

struct WeatherAppView: View {
    
    @State private var isNight = false
    
    var weatherArray: [WeatherModel] = [
        WeatherModel(day: "TUE", todaysWeather: .cloudy, temperature: 65),
        WeatherModel(day: "WED", todaysWeather: .sunny, temperature: 70),
        WeatherModel(day: "THU", todaysWeather: .cloudy, temperature: 62),
        WeatherModel(day: "FRI", todaysWeather: .windy, temperature: 58),
        WeatherModel(day: "SAT", todaysWeather: .snowy, temperature: 22),
    ]
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                      temperature: 76)
                
                HStack(spacing: 20) {
                    ForEach(weatherArray) { weather in
                        WeatherDayView(dayOfWeek: weather.day, imageName: weather.imageName, temperature: weather.temperature)
                    }
                }
                
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
                }
                
                Spacer()
            }
        }
        
    }
    
   
}

#Preview {
    WeatherAppView()
}




struct BackgroundView: View {
    
    var isNight: Bool
    
    var body: some View {
//        LinearGradient(gradient: Gradient(colors: [ isNight ? .black : .blue,
//                                                    isNight ? .gray : Color("lightBlue")]),
//                       startPoint: .topLeading,
//                       endPoint: .bottomTrailing)
//        .ignoresSafeArea()
        
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}

struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70,
                              weight: .medium,
                              design: .default))
                .foregroundStyle(.white)
        }
        .padding(.bottom, 40)
        
    }
}



struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 20, weight: .medium))
                .foregroundStyle(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32,
                          weight: .medium,
                          design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}
