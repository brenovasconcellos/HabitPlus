//
//  SplashView.swift
//  HabitPlus
//
//  Created by Breno Vasconcellos on 18/08/22.
//

import SwiftUI

struct SplashView: View {
    
    @ObservedObject var viewModel: SplashViewModel
    
    var body: some View {
        Group {
            switch viewModel.uiState {
            case .loading:
                loadingView()
            case .goToSigInScreen:
                //navegar para a proxima tela
                viewModel.signInView()
            case .goToHomeScreen:
                Text("carregar tela principal")
                //navegar para a proxima tela
            case .error(let msg):
                loadingView(error: msg)
            }
        }.onAppear {
            viewModel.onAppear()
        }
    }
}

extension SplashView {
    func loadingView(error: String? = nil) -> some View {
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .ignoresSafeArea()
            
            if let error = error {
                Text("")
                    .alert(isPresented: .constant(true)) {
                        Alert(title: Text("HabitPlus"), message: Text(error), dismissButton: .default(Text("Ok")) {
                            //faz algo quando some o alerta
                        })
                    }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self) { value in
            let viewModel = SplashViewModel()
            SplashView(viewModel: viewModel)
                .previewDevice("Iphone 13")
                .preferredColorScheme(value)
        }
        
    }
}
