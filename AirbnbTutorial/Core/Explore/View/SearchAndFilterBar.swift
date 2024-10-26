//
//  SearchAndFilterBar.swift
//  AirbnbTutorial
//
//  Created by haritS on 15/10/2567 BE.
//

import SwiftUI

struct SearchAndFilterBar: View {
    @Binding var location: String
    var body: some View {
        HStack {
            //1
            Image(systemName: "magnifyingglass")
            //2
            VStack(alignment: .leading, spacing: 2) {
                Text(location.isEmpty ? "Where to?" : location)
                    .fontWeight(.semibold)
                    .font(.footnote)
                
                Text(" \(location.isEmpty ? "Any where - " : "" )Any week - Any guests")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            } //V
            
            Spacer()
            //3
            Button(action: {}) {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            }
        } //H
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray4))
                .shadow(color: .black.opacity(0.4), radius: 2)
        }
        .padding()
    }
}

#Preview {
    SearchAndFilterBar(location: .constant("Los Angeles"))
}
