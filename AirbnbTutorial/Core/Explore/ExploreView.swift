//
//  ExploreView.swift
//  AirbnbTutorial
//
//  Created by haritS on 14/10/2567 BE.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                
                SearchAndFilterBar()
                
                LazyVStack (spacing: 32){
                    ForEach(0...10, id: \.self) { listing in
                        
                        NavigationLink(value: listing) {
                            ListingItemView()
                                .frame(height: 410)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                        
                    }
                }
                .padding()
            }
            .navigationDestination(for: Int.self) { listing in
                ListingDetailView()
                   .navigationBarBackButtonHidden()
                   .navigationBarHidden(true)
                   
                   
            }
        }
    }
}

#Preview {
    ExploreView()
}
