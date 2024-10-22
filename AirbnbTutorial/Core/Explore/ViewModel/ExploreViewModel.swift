//
//  ExploreViewModel.swift
//  AirbnbTutorial
//
//  Created by haritS on 19/10/2567 BE.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    private let service: ExploreService
    init(service: ExploreService) {
        self.service = service
        
        Task{
            await fetchListings()
        }
    }
    
    func fetchListings() async  {
        do {
            self.listings = try await service.fetchListings()
        } catch  {
            print("DEBUG: Failed to fetch lisitings with error: \(error.localizedDescription)")
        }
    }
    
}
 
