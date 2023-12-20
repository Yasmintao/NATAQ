//
//  MainView.swift
//  Team26
//
//  Created by Abrar Alhazza on 05/06/1445 AH.
//

import SwiftUI

struct MainView: View {
    
    @State var imageArray = ["إنطق الكلمة","إسمع الكلمة"]
    @State var destinations = [color()]
    
    private let adaptaveColums = [
        GridItem(.adaptive(minimum: 170))
    ]
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("b")
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    
                    Image("logo")
                        .frame(width: 263 ,height: 161 )
                    
                    ZStack (alignment: .trailing){
                        Text("آختار الفئة")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(Color("2"))
                            .padding()
                            .multilineTextAlignment(.trailing)
                    }
                    LazyVGrid(columns: adaptaveColums, spacing: 20){
                        ForEach(imageArray, id:\.self){ im in
                            NavigationLink(destination: destinations[0])
                            {
                                VStack{
                                    ZStack{
                                        if im == "" {
                                            RoundedRectangle(cornerRadius: 8)
                                                .frame(width: 147,height: 184)
                                                .foregroundColor(Color("1"))
                                        }
                                        
                                        Image(im)
                                            .frame(width: 147,height: 184)
                                        
                                    }
                                    
                                    Text(im).bold()
                                        .foregroundColor(Color("2"))
                                }
                                
                                
                                
                                
                                
                                
                                
                                
                            }
                            
                        }
                    }
                    
                    
                    //                HStack{
                    //                    Image("image2")
                    //                        .ignoresSafeArea()
                    //                        .frame(width: 163 ,height: 202)
                    //
                    //
                    //                    ZStack{
                    //                        RoundedRectangle(cornerRadius: 8)
                    //                            .frame(width: 147,height: 184)
                    //                            .foregroundColor(Color("1"))
                    //                        Image("image1")
                    //                            .ignoresSafeArea()
                    //                            .frame(width: 147,height: 184)
                    //
                    //                    }
                    //                }
                    //                    .padding()
                    //
                    ////                VStack{
                    //                    HStack{
                    //                        Image("image3")
                    //                        Image("image4")
                    //                    }
                    
                    
                    //            }
                    
                    //                RoundedRectangle(cornerRadius: 8)
                    //                    .frame(width: 163 ,height: 202)
                    //
                    //                RoundedRectangle(cornerRadius: 8)
                    //                    .frame(width: 163 ,height: 202)
                    
                }
                .padding()
                
                
                
            }
        }
    }
}


#Preview {
    MainView()
}
