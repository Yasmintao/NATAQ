//
//  MainView.swift
//  Team26
//
//  Created by Abrar Alhazza on 05/06/1445 AH.
//

import SwiftUI

struct MainView: View {
    
    @State var imageArray = ["اربط الصوت بالصورة","اوجد الكلمة"]
    @State var destinations = [ContentView(),]
    
    private let adaptaveColums = [
        GridItem(.adaptive(minimum: 170))
    ]
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("b")
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    
                    //                VStack{
                    Image("logo")
                        .frame(width: 263 ,height: 161 )
                    ZStack (alignment: .trailing){
                        Text("آختار الفئة")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(Color("2"))
                            .padding()
                        //                        .frame(height: 1.0)
                            .multilineTextAlignment(.trailing)
                    }
                    //                }
                    //                .padding(.bottom,600)
                    //                .frame(height: 5.0)
                    LazyVGrid(columns: adaptaveColums, spacing: 20){
                        ForEach(imageArray, id:\.self){ im in
                            NavigationLink(destination: destinations[0]){
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
