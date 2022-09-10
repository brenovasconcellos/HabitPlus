//
//  SignInUIState.swift
//  HabitPlus
//
//  Created by Breno Vasconcellos on 25/08/22.
//

import Foundation

enum SignInUIState: Equatable {
    case none
    case loading
    case goToHomeScreen
    case error(String)
}
