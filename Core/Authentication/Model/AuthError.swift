//
//  AuthError.swift
//  AirBnbClone
//
//  Created by Stephan Dowless on 10/4/23.
//

import Foundation

enum AuthError: Error {
    case invalidEmail
    case invalidPassword
    case userNotFound
    case weakPassword
    case unknown
}
