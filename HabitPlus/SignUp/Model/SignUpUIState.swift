//
//  SignUpUIState.swift
//  HabitPlus
//
//  Created by Breno Vasconcellos on 29/08/22.
//

import Foundation

enum SignUpUIState: Equatable {
    case none
    case loading
    case success
    case error(String)
}
