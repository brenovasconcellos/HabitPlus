//
//  HomeView.swift
//  HabitPlus
//
//  Created by Breno Vasconcellos on 26/08/22.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        Text("ola home page")
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModel())
    }
}


