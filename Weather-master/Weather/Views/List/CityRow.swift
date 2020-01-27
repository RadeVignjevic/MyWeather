import SwiftUI

struct CityRow : View {
    
    @ObservedObject var city: City
    
    var body: some View {
        NavigationLink(destination: CityWeatherView(city: city)) {
            HStack(alignment: .firstTextBaseline) {
                Text(city.name)
                    .lineLimit(nil)
                    .font(.title)
                Spacer()
                HStack {
                    city.weather?.current.icon.image
                        .foregroundColor(Color.gray)
                        .font(.title)
                    Text(city.weather?.current.temperature.formattedTemperature ?? "-ºC")
                        .foregroundColor(.gray)
                        .font(.title)
                }
            }
            .padding([.trailing, .top, .bottom])
        }
    }
    
}

//#if DEBUG
//struct CityRow_Previews : PreviewProvider {
//    static var previews: some View {
//        CityRow()
//    }
//}
//#endif
