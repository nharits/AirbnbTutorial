//
//  ListingItemView.swift
//  AirbnbTutorial
//
//  Created by haritS on 14/10/2567 BE.
//

import SwiftUI

var images = [
    "listing-1",
    "listing-2",
    "listing-3",
    "listing-4",
]


struct ListingItemView: View {
    var body: some View {
        VStack (spacing: 8) {
            //image
            ListingImageCarouseView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            //listing detail
            
            HStack(alignment: .top) {
                //detail
                VStack (alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack (spacing: 4) {
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                //rating
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("4.86")
                }
                .foregroundStyle(.black)

            }
            .font(.footnote)
            
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
