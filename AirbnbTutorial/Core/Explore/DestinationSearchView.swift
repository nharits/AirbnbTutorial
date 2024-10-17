//
//  DestinationSearchView.swift
//  AirbnbTutorial
//
//  Created by haritS on 16/10/2567 BE.
//

import SwiftUI

enum DestinationSearchOptions {
    case location, date, guests
}

struct DestinationSearchView: View {
    
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOption: DestinationSearchOptions = .location
    
    var body: some View {
        VStack {
            Button(action: {
                withAnimation(.snappy) {
                    show.toggle()
                }
            }) {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black)
            }
            
            //where to
            VStack(alignment: .leading ) {
                
                if selectedOption == .location {
                    
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Searching destinations", text: $destination )
                            .font(.subheadline)
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1.0)
                            .foregroundStyle(Color(.systemGray4))
                    }
                } else {
                    CollapsedPickerView (title: "Where ", description: "Add destination")
                }
                
            }
            .padding()
            //add frame size condition
            .frame(height: selectedOption == .location ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .location }
            }
            
            //date slection view
            
            VStack {
                if selectedOption == .date {
                    HStack {
                        Text("Show expanded view")
                        Spacer()
                    }
                } else {
                    CollapsedPickerView (title: "When", description: "Add dates")
                }
            }
            .padding()
            //add frame size condition
            .frame(height: selectedOption == .date ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .date }
            }
            
            //num guests view
            
            VStack {
                if selectedOption == .guests {
                    HStack {
                        Text("Show expanded view")
                        Spacer()
                    }
                } else {
                    CollapsedPickerView(title: "Who", description: "Add guests")
                }
            }
            .padding()
            //add frame size condition
            .frame(height: selectedOption == .guests ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .guests }
            }
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}

struct CollapsedPickerView: View {
    let title : String
    let description : String
    
    var body: some View {
        VStack{
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            .font(.subheadline)
            .fontWeight(.semibold)
        }
    }
}
