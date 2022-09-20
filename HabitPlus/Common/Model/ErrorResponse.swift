//
//  ErrorResponse.swift
//  HabitPlus
//
//  Created by Breno Vasconcellos on 13/09/22.
//

import Foundation

struct ErrorResponse: Decodable {
    
    let detail: String
    
    enum CodingKeys: String, CodingKey {
        case detail
    }
    
}
