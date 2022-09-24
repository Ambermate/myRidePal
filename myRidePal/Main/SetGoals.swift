//
//  SetGoals.swift
//  myRidePal
//
//  Created by Long Hai on 9/24/22.
//

import SwiftUI

struct SetGoals: View {
    @EnvironmentObject var model: AuthViewModel
    @EnvironmentObject var controlModel: ViewControlModel
    
    @State var size = UIScreen.main.bounds.width - 100
    @State var progress: CGFloat = 0
    @State var angle: CGFloat = 0
    var body: some View {
        ZStack {
            VStack {
                Text("You want to save")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.top, 90)
                
                Spacer()
            }
            
            ZStack {
                Circle()
                    .stroke(Color(.lightGray), style: StrokeStyle(lineWidth: 40, lineCap: .round, lineJoin: .round))
                    .frame(width: size, height: size)
                
                Circle()
                    .trim(from: 0, to: progress)
                    .stroke(Color(UIColor(named: "green")!), style: StrokeStyle(lineWidth: 40, lineCap: .round, lineJoin: .round))
                    .frame(width: size, height: size)
                    .rotationEffect(.init(degrees: -90))
                
                Circle()
                    .fill(Color(UIColor(named: "banana")!))
                    .frame(width: 50, height: 50)
                    .offset(x: size / 2)
                    .rotationEffect(.init(degrees: angle))
                    .gesture(DragGesture().onChanged(Dragging(value: )))
                    .rotationEffect(.init(degrees: -90))
                
                Text(String(format: "%.0f", progress * 10000) + " kg of CO2")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                    
            }
            
            VStack {
                Spacer()
                
                Button(action: {controlModel.isShowingGoals = false}) {
                    Text("Set Goals")
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 15)
                        .background(Color(UIColor(named: "green")!))
                        .foregroundColor(.white)
                        .cornerRadius(30)
                        .padding(.horizontal, 40)
                    
                }
                .padding(.vertical, 30)
                
            }
        }
    }
    
    func Dragging(value: DragGesture.Value) {
        let vector = CGVector(dx: value.location.x, dy: value.location.y)
        let radian = atan2(vector.dy - 27.5, vector.dx - 27.5)
        
        var angle = radian * 180 / .pi
        
        if angle < 0 {
            angle = 360 + angle
        }
        
        withAnimation(Animation.linear(duration: 0.15)) {
            let progress = angle / 360
            self.progress = progress
            self.angle = Double(angle)
        }
    }
}

struct SetGoals_Previews: PreviewProvider {
    static var previews: some View {
        SetGoals().previewDevice("iPhone 13").environmentObject(AuthViewModel())
            .environmentObject(ViewControlModel())
    }
}
