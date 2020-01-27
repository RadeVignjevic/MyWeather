import SwiftUI

extension Weather {
    
    struct List<T: Codable & Identifiable>: Codable {
        
        var list: [T]
        
        enum CodingKeys: String, CodingKey {
            
            case list = "data"
            
        }
        
    }
    
}
