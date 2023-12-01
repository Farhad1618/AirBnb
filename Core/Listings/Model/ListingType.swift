//
//  ListingType.swift
//  AirBnbClone
//
//  Created by Stephan Dowless on 10/5/23.
//

import Foundation

enum ListingType: Int, Codable, Identifiable, Hashable {
    case apartment
    case house
    case townHouse
    case villa
    
    var description: String {
        switch self {
        case .apartment: return "Apartment"
        case .house: return "House"
        case .townHouse: return "Town Home"
        case .villa: return "Villa"
        }
    }
    
    var id: Int { return self.rawValue }
}
