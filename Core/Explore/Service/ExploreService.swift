//
//  ExploreService.swift
//  AirBnbClone
//
//  Created by Stephan Dowless on 10/4/23.
//

import Foundation

class ExploreService {    
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
