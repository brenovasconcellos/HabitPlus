//
//  SignUpViewRouter.swift
//  HabitPlus
//
//  Created by Breno Vasconcellos on 29/08/22.
//

import SwiftUI

enum SignUpViewRouter {
    
    static func makeHomeView() -> some View {
        let viewModel = HomeViewModel()
        return HomeView(viewModel: viewModel)
    }
    
}
