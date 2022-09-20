//
//  SignInErrorResponse.swift
//  HabitPlus
//
//  Created by Breno Vasconcellos on 19/09/22.
//

import Foundation

struct SignInErrorResponse: Decodable {
    
    let detail: SignInDetailErrorResponse
    
    enum CodingKeys: String, CodingKey {
        case detail
    }
    
}

struct SignInDetailErrorResponse: Decodable {
    
    let message: String
    
    enum CodingKeys: String, CodingKey {
        case message
    }
    
}
