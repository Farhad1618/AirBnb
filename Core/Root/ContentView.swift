//
//  ContentView.swift
//  AirBnbClone
//
//  Created by Stephan Dowless on 6/14/23.
//

import SwiftUI

struct ContentView: View {
    private let authService: AuthService
    private let userService: UserService
    
    @StateObject var viewModel: ContentViewModel
    
    init(authService: AuthService, userService: UserService) {
        self.authService = authService
        self.userService = userService
        
        self._viewModel = StateObject(wrappedValue: ContentViewModel(authService: authService, userService: userService))
    }
    
    var body: some View {
        MainTabView(service: authService)
            .environmentObject(viewModel)
    }
}

#Preview {
    ContentView(authService: AuthService(), userService: UserService())
}
