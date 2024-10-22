//
//  ListingImageCarouseView.swift
//  AirbnbTutorial
//
//  Created by haritS on 15/10/2567 BE.
//

import SwiftUI

struct ListingImageCarouseView: View {
    
    let listing: Listing
    
    var body: some View {
        TabView{
            ForEach(listing.imageURLs, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        //.frame(height: 320)
        //.clipShape(RoundedRectangle(cornerRadius: 10))
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouseView(listing: DeveloperPreview.shared.listings[0])
}
