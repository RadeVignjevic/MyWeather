import SwiftUI
import Combine

class CityStore: ObservableObject {
        
    @Published var cities: [City] = [City()]
    
}
