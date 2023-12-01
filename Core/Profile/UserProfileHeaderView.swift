//
//  UserProfileHeaderView.swift
//  AirBnbClone
//
//  Created by Stephan Dowless on 10/4/23.
//

import SwiftUI

struct UserProfileHeaderView: View {
    let user: User
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 27.5)
                    .fill(Color.white)
                    .frame(width: 300, height: 200, alignment: .center)
                    .shadow(radius: 10)
            
            VStack(spacing: 12) {
                CircularProfileImageView(imageUrl: user.profileImageUrl,
                                         size: .xLarge)
                
                VStack {
                    Text(user.fullname)
                        .font(.headline)
                    
                    Text(user.accountType.description)
                        .font(.footnote)
                }
            }
        }
    }
}

#Preview {
    UserProfileHeaderView(user: DeveloperPreview.shared.user)
}
