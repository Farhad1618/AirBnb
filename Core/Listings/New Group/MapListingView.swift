//
//  MapListingView.swift
//  AirBnbClone
//
//  Created by Stephan Dowless on 10/5/23.
//

import SwiftUI

struct MapListingView: View {
    let listing: Listing
    
    var body: some View {
        VStack {
            ZStack(alignment: .topTrailing) {
                TabView {
                    ForEach(listing.imageURLs, id: \.self) { imageUrl in
                        Image(imageUrl)
                            .resizable()
                            .scaledToFill()
                            .clipShape(Rectangle())
                    }
                }
                .frame(height: 200)
                .tabViewStyle(.page)
            }
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                    
                    Text("7 nights: Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4) {
                        Text("$567")
                            .fontWeight(.semibold)
                        
                        Text("night")
                    }
                    .padding(.top, 2)
                }
                
                Spacer()
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 12, height: 12)
                    
                    Text("4.86")
                        .font(.footnote)
                }
            }
                .foregroundColor(.black)
                .font(.footnote)
                .padding(8)
        }
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .padding()
    }
}

#Preview {
    MapListingView(listing: DeveloperPreview.shared.listings[0])
}
