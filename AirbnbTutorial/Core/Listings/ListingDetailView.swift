//
//  ListingDetailView.swift
//  AirbnbTutorial
//
//  Created by haritS on 15/10/2567 BE.
//

import SwiftUI

struct ListingDetailView: View {
    var body: some View {
        ScrollView {
            ListingImageCarouseView()
                .frame(height: 320)
            
            //1
            VStack(alignment: .leading, spacing: 8) {
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    HStack(spacing: 2) {
                        Image(systemName: "star.fill")
                        
                        Text("4.86")
                        
                        Text(" - ")
                        
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    
                    Text("Miami, Florida")
                    
                }
                .font(.caption)
                
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            //2
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Entire villa hosted by John Smith")
                        .font(.headline)
                        .frame(width: 250,alignment: .leading )
                    
                    HStack(spacing: 2) {
                        Text("4 guests -")
                        Text("4 bedrooms -")
                        Text("4 beds -")
                        Text("3 baths")
                    }
                    .font(.caption)
                }
                .frame(width: 300,alignment: .leading)
                
                Spacer()
                
                Image("male-profile-photo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                
            }
            .padding()
            
            Divider()
            
            //3
            VStack(alignment: .leading, spacing: 16) {
                
                ForEach(0 ..< 2, id: \.self) { feature in
                    HStack {
                        Image(systemName: "medal")
                        
                        VStack (alignment: .leading){
                            Text("Self check-in")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Check yourself in with the keypad")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        
                        Spacer()
                        
                    }
                    
                }
            }
            .padding()
            
            Divider()
            
            //4
            
        }
    }
}

#Preview {
    ListingDetailView()
}
