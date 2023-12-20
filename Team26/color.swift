

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
    
    @State var progress = 0
    @State var page = 0
    
    var textArr = ["ما هو الحيوان الذي يعيش بالماء؟", "من هو ملك الغابة؟", "ماهو لون البرتقال؟"]
    var choice1 = ["سمكة", "أسد", "برتقالي"]
    var choice2 = ["فيل", "حمار وحشي", "ازرق"]
    var choice3 = ["قطة", "زرافة", "اخضر"]
    
    
        
        var body: some View {
            NavigationView {

            ZStack {
                
                HStack{
                    
                    Rectangle()
                    
                        .foregroundColor(.clear)
                        .frame(width: 250, height: 42.49993)
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
                                
                                ZStack{
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 121, height: 21)
                                        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                                        .cornerRadius(4)
                                    
                                    Text(choice1[page])
                                        .foregroundColor(.black)
                                    
                                    
                                }
                                .padding(.bottom, -10)
                                
                            }
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
                                
                                ZStack{
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 121, height: 21)
                                        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                                        .cornerRadius(4)
                                    
                                    Text(choice2[page])
                                        .foregroundColor(.black)
                                    
                                    
                                }
                                .padding(.bottom, -10)
                                
                            }
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
                                
                                

                                ZStack{
                                    if page == 0{
                                        Image(textArr[page])
                                            .foregroundColor(.clear)
                                            .frame(width: 121, height: 21)
                                            .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                                            .cornerRadius(4)
                                    }
                                    else{
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 121, height: 21)
                                            .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                                            .cornerRadius(4)
                                    }
                                    
                                    Text(choice3[page])
                                        .foregroundColor(.black)
                                    
                                    
                                }
                                .padding(.bottom, -10)
                                
                            }
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
                        
                        Button("السابق") {
                            
                            if progress > 0{
                                progress -= 1
                            }
                            
                            page -= 1
                            
                        }
                        .foregroundColor(.black)
                        .frame(width: 137, height: 40)
                        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                        
                        .cornerRadius(8)
                        .rotationEffect(Angle(degrees: -90))
                        Spacer()
                        
                        Button("التالي") {
                            if progress < 5{
                                progress += 1
                            }
                            page += 1
                            
                        }
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
