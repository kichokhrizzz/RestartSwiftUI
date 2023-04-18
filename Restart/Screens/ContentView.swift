//
//  ContentView.swift
//  Restart
//
//  Created by Jhosel Badillo Cortes on 18/04/23.
//

import SwiftUI

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ContentView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack{
            if isOnboardingViewActive{
                OnBoardingView()
            }
            else{
                HomeView()
            }
        }
    }
}

