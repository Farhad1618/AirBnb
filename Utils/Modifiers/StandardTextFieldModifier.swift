//
//  StandardTextFieldModifier.swift
//  AirBnbClone
//
//  Created by Stephan Dowless on 10/4/23.
//

import SwiftUI

struct StandardTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
