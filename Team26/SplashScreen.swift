//
//  SplashScreen.swift
//  Team26
//
//  Created by Abrar Alhazza on 05/06/1445 AH.
//
import SwiftUI

struct SplashScreen: View {
    var body: some View {
        ZStack {
            Color("b")
                .edgesIgnoringSafeArea(.all)
            
            Image("ba")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
            
            
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
            }
        }.ignoresSafeArea()
//            ZStack{
//                Image("ba")
//                    .ignoresSafeArea()
//            }
//                Text("Welcome to Our App!")
//                    .font(.largeTitle)
//                    .fontWeight(.bold)
//                    .padding()
            }
        }
    


struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
