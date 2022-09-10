//
//  SplashViewModel.swift
//  HabitPlus
//
//  Created by Breno Vasconcellos on 23/08/22.
//

import SwiftUI

class SplashViewModel: ObservableObject {
    
    @Published var uiState: SplashUIState = .loading
    
    func onAppear() {
        // faz algo assincrono e muda o estado da uiState
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            //aqui é chamado depois de 2 sec
            //self.uiState = .error("erro na resposta do servidor")
            self.uiState = .goToSigInScreen
        }
    }
}

extension SplashViewModel {
    func signInView() -> some View {
        return SplashViewRouter.makeSignInView()
    }
}
