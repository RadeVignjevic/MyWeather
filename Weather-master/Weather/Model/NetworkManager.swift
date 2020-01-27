import UIKit

class NetworkManager: NSObject {
    
    struct Key {
        
        static let darkSky: String = "f59cbdca788975991f65d1c9fd0aaf0a" //dark sky api
        static let googleMaps: String = "AIzaSyAHXr0Uv1U3AyTGbUUc-d7jLKXljYPlAY8" // google api
        
    }
    
    struct APIURL {
        
        static func weatherRequest(longitude: Double, latitude: Double) -> String {
            return "https://api.darksky.net/forecast/\(NetworkManager.Key.darkSky)/\(latitude),\(longitude)?units=ca&lang=fr".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        }
        
        static func cityCompletion(for search: String) -> String {
            return "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=\(search)&types=(cities)&key=\(NetworkManager.Key.googleMaps)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        }
        
        static func cityData(for placeID: String) ->  String {
            return "https://maps.googleapis.com/maps/api/place/details/json?placeid=\(placeID)&key=\(NetworkManager.Key.googleMaps)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        }
                
    }
        
}
