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
                LazyVStack (spacing: 32){
                    ForEach(0...10, id: \.self) { listing in
                        Rectangle()
                            .frame(height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ExploreView()
}
