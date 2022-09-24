//
//  Tracker.swift
//  myRidePal
//
//  Created by Long Hai on 9/24/22.
//

import SwiftUI

struct Tracker: View {
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
                        
                        Text("33,300 kg CO2 reduce")
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
                            .padding(.trailing, 100)
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
                
                Button(action: {}
                ) {
                    Text("See Rewards")
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
}

struct Tracker_Previews: PreviewProvider {
    static var previews: some View {
        Tracker().previewDevice("iPhone 13")
    }
}
