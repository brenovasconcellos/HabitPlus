//
//  HabitPlusApp.swift
//  HabitPlus
//
//  Created by Breno Vasconcellos on 12/08/22.
//

import SwiftUI

@main
struct HabitPlusApp: App {
    var body: some Scene {
        WindowGroup {
            SplashView(viewModel: SplashViewModel())
            //SignInView(viewModel: SignInViewModel())
        }
    }
}
