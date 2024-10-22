//
//  ExploreService.swift
//  AirbnbTutorial
//
//  Created by haritS on 19/10/2567 BE.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
