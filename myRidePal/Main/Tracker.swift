//
//  Tracker.swift
//  myRidePal
//
//  Created by Long Hai on 9/24/22.
//

import SwiftUI

struct Tracker: View {
    @EnvironmentObject var controlModel: ViewControlModel
    @State var isOn = false
    var body: some View {
        
        ZStack {
            VStack {
                Text("Hi, John")
                    .fontWeight(.bold)
                    .font(.system(size: 40))
                    .padding(20)
                    .padding(.horizontal, 20)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Here's your CO2 emission tracker")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 40)
                    
                
                Spacer().frame(height: 20)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        Spacer().frame(height: 30)
                        
                        Text("This Month")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Rectangle()
                            .frame(height: 10)
                            .cornerRadius(20)
                            .padding(.trailing, 50)
                            .animation(.linear(duration: 3.0), value: isOn)
                            
                        
                        Text("1,300 kg CO2 reduce")
                            .frame(maxWidth: .infinity, alignment: .trailing)
                        
                        
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 30)
                    
                    VStack {
                        
                        
                        Text("Today")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Rectangle()
                            .frame(height: 10)
                            .cornerRadius(20)
                            .padding(.trailing, 200)
                            //.frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("300 kg CO2 reduce")
                            .frame(maxWidth: .infinity, alignment: .trailing)
                        
                        
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 30)
                }
                
            }
            
            VStack {
                Spacer()
                
                Button(action: {controlModel.isShowingGoals = true}) {
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
        .onAppear {
            isOn = true
        }
        .fullScreenCover(isPresented: $controlModel.isShowingGoals, onDismiss: {}) {
            SetGoals()
        }

    }
}

struct Tracker_Previews: PreviewProvider {
    static var previews: some View {
        Tracker().previewDevice("iPhone 13")
            .environmentObject(ViewControlModel())
    }
}
