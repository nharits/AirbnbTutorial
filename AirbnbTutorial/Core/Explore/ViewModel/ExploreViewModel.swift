//
//  ExploreViewModel.swift
//  AirbnbTutorial
//
//  Created by haritS on 19/10/2567 BE.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    @Published var searchLocation = ""
    
    private let service: ExploreService
    private var listingsCopy = [Listing]()
    
    init(service: ExploreService) {
        self.service = service
        
        Task{
            await fetchListings()
        }
    }
    
    func fetchListings() async  {
        do {
            self.listings = try await service.fetchListings()
            self.listingsCopy = listings
        } catch  {
            print("DEBUG: Failed to fetch lisitings with error: \(error.localizedDescription)")
        }
    }
    
    func updateListingsForLocation() {
        let filteredListings = listingsCopy.filter( {
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation.lowercased()
        })
        
        self.listings = filteredListings.isEmpty ? listings : filteredListings
    }
    
}
 
