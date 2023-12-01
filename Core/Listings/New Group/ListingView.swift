//
//  ListingView.swift
//  AirBnbClone
//
//  Created by Stephan Dowless on 6/14/23.
//

import SwiftUI

struct ListingView: View {
    let listing: Listing
    
    var body: some View {
        VStack(spacing: 8) {
                ZStack(alignment: .topTrailing) {
                    TabView {
                        ForEach(listing.imageURLs, id: \.self) { imageUrl in
                            Image(imageUrl)
                                .resizable()
                                .scaledToFill()
                        }
                    }
                    .frame(height: 320)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .tabViewStyle(.page)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "heart")
                            .imageScale(.large)
                    }
                    .foregroundStyle(.white)
                    .shadow(color: .black, radius: 10)
                    .padding()
                }
                
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text("\(listing.city), \(listing.state)")
                            .fontWeight(.semibold)
                        
                        VStack(spacing: 0) {
                            Text("12 mi away")
                                .foregroundStyle(.gray)
                            
                            Text("Nov 3 - 10")
                                .foregroundStyle(.gray)
                        }
                        
                        HStack(spacing: 4) {
                            Text("$567")
                                .fontWeight(.semibold)
                            
                            Text("night")
                        }
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
            }
            .padding()
    }
}

struct ListingView_Previews: PreviewProvider {
    static var previews: some View {
        ListingView(listing: DeveloperPreview.shared.listings[2])    }
}
