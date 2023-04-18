//
//  AuthResponse.swift
//  Spotify
//
//  Created by Alexandru Meta on 18.04.2023.
//

import Foundation

struct AuthResponse: Codable {
    
    
    let access_token: String
    let expires_in: Int
    let refresh_token: String?
    let scope: String
    let token_type: String
}
