

import SwiftUI

struct ProgressBar: View {
    
    let height: CGFloat
    let padding: CGFloat
    let completedDays: Int
    let totalDays: Int = 100
    
    var body: some View {
        
        let progress = CGFloat(completedDays) / CGFloat(totalDays)
        
        let unit = ((UIScreen.main.bounds.width - 5.3 * padding) / 5) * CGFloat(completedDays)
        
        let calculatedWidth = (unit/5)*2
        
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: height, style: .continuous)
                .frame(height: height)//width: .infinity,
                .foregroundColor(Color.black.opacity(0.1))
                .padding(padding)
            
            RoundedRectangle(cornerRadius: height, style: .continuous)
                .frame(width: calculatedWidth, height: height)
                .background(
                    LinearGradient(
                        gradient: Gradient(stops: [
                            Gradient.Stop(color: Color(red: 0.83, green: 0.35, blue: 0.21).opacity(0.8), location: 0.00),
                        ]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                    .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
                )
                .foregroundColor(.clear)
                .padding(padding)
        }
    }
}
struct color: View {
    
    
    
    
    @State var  showAlert = false
    @State var isCorrect = false
    @State var progress = 0
    @State var page = 0
    
    var textArr = ["An animal that lives in the water","whish one is the lion?","what is the orange color?"]
    var choice1 = ["fish", "lion", "orange"]
    var choice2 = ["elephant", "zebra", "blue"]
    var choice3 = ["cat", "gerraf", "green"]
    
   @State var choosen = ""
    @State var isCoreect = false
    
        
        var body: some View {
            NavigationView {

            ZStack {
                
                HStack{
                    
                    Rectangle()
                    
                        .foregroundColor(.clear)
                        .frame(width: 250, height: 42)
                    
                        .background(Color(red: 0.47, green: 0.45, blue: 0.18))
                        .cornerRadius(8)
                        .rotationEffect(Angle(degrees: -90))
                    
                    
                    Spacer()
                }
                HStack{


                    Text(textArr[page])
                        .offset(x:0,y:-125)
                        .foregroundColor(.white)
                        .rotationEffect(Angle(degrees: -90))
                        .accessibilityLabel(textArr[page])
                    
                }
                
                HStack{
                    ProgressBar(height: 10, padding: 20, completedDays: progress )
                        .rotationEffect(Angle(degrees: -90))
                } .offset(x:-160,y:0)
                
                VStack{
                    Spacer()
                    Spacer()
                    
                    Rectangle()
                    
                        .foregroundColor(.clear)
                        .frame(width: 121.03754, height: 121.03754)
                        .background(.white)
                        .cornerRadius(8)
                        .overlay(
                            ZStack(alignment: .bottom){
                               
                                Image(choice1[page])
                               .accessibilityLabel(choice1[page])

                                ZStack{
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 147, height: 41)
                                        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                                        .cornerRadius(4)
                                    
                                    Text(choice1[page])
                                        .foregroundColor(.black)
                                    
                                }
                                .padding(.bottom, -10)
                                
                            }
                                .onTapGesture {
                                    choosen = choice1[page]
                                    
                                    if choosen == "fish" || choosen == "lion" || choosen == "orange" {
                                        // Display an alert before setting isCorrect to true
                                        showAlert = true
                                    }
                                    
                                    isCorrect = true
                                }

                                .alert(isPresented: $showAlert) {
                                    Alert(
                                        title: Text("Good job !"),
                                        message: Text("Right Answe"),
                                        dismissButton: .default(Text("OK")) {
                                           
                                        }
                                    ) 
                                }
                                .cornerRadius(10)
                                .shadow(radius: 5)
                            
                        )
                        .rotationEffect(Angle(degrees: -90))
                    
                    
                    
                    
                    
                    
                    Spacer()
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 121.03754, height: 121.03754)
                        .background(.white)
                        .cornerRadius(8)
                        .overlay(
                            ZStack(alignment: .bottom){
                               
                                Image(choice2[page])
                                    .accessibilityLabel(choice2[page])
                                ZStack{
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 147, height: 41)
                                       .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                                        .cornerRadius(4)
                                    
                                    Text(choice2[page])
                                        .foregroundColor(.black)
                                    
                                    
                                }
                                .padding(.bottom, -10)
                                
                            }
                                .onTapGesture {
                                    choosen = choice1[page]
                                    
                                    if choosen == "fish" || choosen == "lion" || choosen == "orange" {
                                        // Display an alert before setting isCorrect to true
                                        showAlert = true
                                    }
                                    
                                    isCorrect = true
                                }

                                .alert(isPresented: $showAlert) {
                                    Alert(
                                        title: Text("Good job !"),
                                        message: Text("Right Answe"),
                                        dismissButton: .default(Text("OK")) {
                                           
                                        }
                                    )
                                }
                                .cornerRadius(10)
                                .shadow(radius: 5)
                                .onTapGesture {
                                    choosen = choice2[page]
                                    
                                    if choosen == "elephant" || choosen == "zebra " || choosen == "blue" {
                                        showAlert = true
                                    }
                                    
                                    isCorrect = true
                                }

                                .alert(isPresented: $showAlert) {
                                    Alert(
                                        title: Text("Good job !"),
                                        message: Text("Right Answe"),
                                        dismissButton: .default(Text("OK")) {
                                           
                                        }
                                    )
                                } .cornerRadius(10)
                                .shadow(radius: 5)

                        )
                        .rotationEffect(Angle(degrees: -90))
                    
                    Spacer()
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 121.03754, height: 121.03754)
                        .background(.white)
                        .cornerRadius(8)
                        .overlay(
                            ZStack(alignment: .bottom){
                                
                                
                                    Image(choice3[page])
                                    .accessibilityLabel(choice3[page])
                                

                                ZStack{
                                    if page == 0{
                                        Image(textArr[page])
                                            .foregroundColor(.clear)
                                            .frame(width: 147, height: 41)
                                           .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                                            .cornerRadius(4)
                                    }
                                    else{
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 121, height: 41)                                            .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                                            .cornerRadius(4)
                                    }
                                    
                                    Text(choice3[page])
                                        .foregroundColor(.black)
                                    
                                    
                                }
                                .padding(.bottom, -10)
                                
                            }
                                .onTapGesture {
                                    choosen = choice3[page]
                                    
                                    if choosen == "cat" || choosen == "gerraf" || choosen == "green" {
                                       
                                        showAlert = true
                                    }
                                    
                                    isCorrect = true
                                }

                                .alert(isPresented: $showAlert) {
                                    Alert(
                                        title: Text("Good job !"),
                                        message: Text("Right Answe"),
                                        dismissButton: .default(Text("OK")) {
                                          
                                        }
                                    )
                                } .cornerRadius(10)
                                .shadow(radius: 5)

                        )
                        .rotationEffect(Angle(degrees: -90))
                    Spacer()
                    Spacer()
                }
                
                
                HStack {
                    Spacer()
                    
                    VStack{
                        Spacer()
                        Spacer()
                        
                        Button("Back") {
                            
                            if progress > 0{
                                progress -= 1
                            }
                            
                            page -= 1
                            
                        }.accessibilityLabel("Back")
                        .foregroundColor(.black)
                        .frame(width: 137, height: 40)
                        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                        
                        .cornerRadius(8)
                        .rotationEffect(Angle(degrees: -90))
                        Spacer()
                        
                        Button("Next") {
                            
                           
                                if progress < 5{
                                    progress += 1
                                }
                                page += 1
                         
                            
                        }
                        .accessibilityLabel("Next")
                        .foregroundColor(.white)
                        .frame(width: 137, height: 40)
                        .background(Color(red: 0.47, green: 0.45, blue: 0.18))
                        .cornerRadius(8)
                        .rotationEffect(Angle(degrees: -90))
                        Spacer()
                        Spacer()
                    }
                    .padding(.trailing, 30)
                }
                
                
            }
            .frame(width:500, height: 855)
            .background(Color(red: 0.97, green: 0.95, blue: 0.88))
            .rotationEffect(Angle(degrees: 90))
        }
    }
}

#Preview {
    color()
}
