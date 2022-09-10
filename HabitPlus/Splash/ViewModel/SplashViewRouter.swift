//
//  SplashViewRouter.swift
//  HabitPlus
//
//  Created by Breno Vasconcellos on 23/08/22.
//

import SwiftUI

enum SplashViewRouter {
    
    static func makeSignInView() -> some View {
        
        let viewModel = SignInViewModel()
        return SignInView(viewModel: viewModel)
        
    }
    
}
