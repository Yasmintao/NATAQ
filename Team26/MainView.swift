//
//  MainView.swift
//  Team26
//
//  Created by Abrar Alhazza on 05/06/1445 AH.
//

//import SwiftUI
//
//struct MainView: View {
//    
//    @State var imageArray = ["إنطق الكلمة","إسمع الكلمة"]
//    @State var destinations = [color()]
//    
//    private let adaptaveColums = [
//        GridItem(.adaptive(minimum: 170))
//    ]
//    
//    var body: some View {
//        NavigationView {
//            ZStack {
//                Color("b")
//                    .edgesIgnoringSafeArea(.all)
//                
//                VStack{
//                    
//                    Image("logo")
//                        .frame(width: 263 ,height: 161 )
//                    
//                    ZStack (alignment: .trailing){
//                        Text("آختار الفئة")
//                            .font(.title)
//                            .frame(maxWidth: .infinity)
//                            .foregroundColor(Color("2"))
//                            .padding()
//                            .multilineTextAlignment(.trailing)
//                    }
//                    LazyVGrid(columns: adaptaveColums, spacing: 20){
//                        ForEach(imageArray, id:\.self){ im in
//                            NavigationLink(destination: destinations[0])
//                            {
//                                VStack{
//                                    ZStack{
//                                        if im == "" {
//                                            RoundedRectangle(cornerRadius: 8)
//                                                .frame(width: 147,height: 184)
//                                                .foregroundColor(Color("1"))
//                                        }
//                                        
//                                        Image(im)
//                                            .frame(width: 147,height: 184)
//                                        
//                                    }
//                                    
//                                    Text(im).bold()
//                                        .foregroundColor(Color("2"))
//                                }
//                                
//                                
//                                
//                                
//                                
//                                
//                                
//                                
//                            }
//                            
//                        }
//                    }
//                    
//                    
//                    //                HStack{
//                    //                    Image("image2")
//                    //                        .ignoresSafeArea()
//                    //                        .frame(width: 163 ,height: 202)
//                    //
//                    //
//                    //                    ZStack{
//                    //                        RoundedRectangle(cornerRadius: 8)
//                    //                            .frame(width: 147,height: 184)
//                    //                            .foregroundColor(Color("1"))
//                    //                        Image("image1")
//                    //                            .ignoresSafeArea()
//                    //                            .frame(width: 147,height: 184)
//                    //
//                    //                    }
//                    //                }
//                    //                    .padding()
//                    //
//                    ////                VStack{
//                    //                    HStack{
//                    //                        Image("image3")
//                    //                        Image("image4")
//                    //                    }
//                    
//                    
//                    //            }
//                    
//                    //                RoundedRectangle(cornerRadius: 8)
//                    //                    .frame(width: 163 ,height: 202)
//                    //
//                    //                RoundedRectangle(cornerRadius: 8)
//                    //                    .frame(width: 163 ,height: 202)
//                    
//                }
//                .padding()
//                
//                
//                
//            }
//        }
//    }
//}
import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("b")
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Image("logo")
                        .frame(width: 263 ,height: 161 )
                        .padding(.bottom,500)
                        .accessibilityLabel("Welcome to NATAQ app")
                 
                }
                VStack{
                    Text(" Choose the category")
//                        .font(.Title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("2"))
                        .font(.system(size: 24))
                        .accessibilityLabel("choose the category")
                       
                       

                        
                  
                }
               
                .offset(x:114,y:-135)
                HStack{
                    
                    NavigationLink(destination: listenable()) {
                        VStack {
                            
                            Image("imageName1")
                                .resizable()
                                .frame(width: 147, height: 184)
                                .cornerRadius(10)
                                .offset(x:0,y:20)
                            Text("Link the photo with the voice").bold()
                                .foregroundColor(Color("2"))
                                .font(.system(size: 18))
                                .offset(x:0,y:20)
                                .accessibilityLabel("link the photo with the voice")
                        }
                    }
                
                    .padding()
                        .frame(height: 20)
                    NavigationLink(destination: color()) {
                        VStack {
                            Image("imageName2")
                                .resizable()
                                .frame(width: 147, height: 184)
                                .cornerRadius(10)
                                .offset(x:0,y:20)
                            
                            
                            
                            Text("Find the photo").bold()
                                .foregroundColor(Color("2"))
                                .font(.system(size: 18))
                                .offset(x:0,y:20)
                                .accessibilityLabel("Find the photo")
                        }
                    }
                    .padding()
                }
            }
          
            .background(Color("ba"))

          
        }
    }
}

#Preview {
    MainView()
}
