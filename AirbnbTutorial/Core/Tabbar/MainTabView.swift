//
//  MainTabView.swift
//  AirbnbTutorial
//
//  Created by haritS on 18/10/2567 BE.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass")}
            WishlistsView()
                .tabItem { Label("Wishlists", systemImage: "heart")}
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person")}
        }
    }
}

#Preview {
    MainTabView()
}
