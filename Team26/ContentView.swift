//
//  ContentView.swift
//  Team26
//
//  Created by Abrar Alhazza on 05/06/1445 AH.
//

import SwiftUI
struct ContentView: View {
    @State private var showSplashScreen = true

    var body: some View {
        ZStack {
            if showSplashScreen {
                SplashScreen()
            } else {
                            MainView()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    showSplashScreen = false
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
static var previews: some View {
        ContentView()
    }
}
