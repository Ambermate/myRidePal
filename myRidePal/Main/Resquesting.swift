//
//  Resquesting.swift
//  myRidePal
//
//  Created by Long Hai on 9/24/22.
//

import SwiftUI

struct Resquesting: View {
    @State private var from = ""
    @State private var to = ""
    @EnvironmentObject var controlModel: ViewControlModel
    
    var body: some View {
        ZStack {
            Color(UIColor(named: "mint")!)
            
            VStack {
                TextField("From", text: $from)
                    .padding(.leading)
                    .font(.system(size: 18))
                    .frame(width: 325, height: 49)
                    .padding(5)
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                
                Spacer().frame(height: 20)
                
                TextField("To", text: $to)
                    .padding(.leading)
                    .font(.system(size: 18))
                    .frame(width: 325, height: 49)
                    .padding(5)
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                
                Spacer().frame(height: 20)
                
                TextField("What time are you leaving?", text: $to)
                    .padding(.leading)
                    .font(.system(size: 18))
                    .frame(width: 325, height: 49)
                    .padding(5)
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                
                Spacer().frame(height: 50)
            }
            
            VStack {
                Spacer()
        
                Button(action: {controlModel.isShowingRequest = false}) {
                    Text("Submit Resquest")
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 15)
                        .background(.white)
                        .foregroundColor(.black)
                        .cornerRadius(30)
                        .padding(.horizontal, 30)
                        .padding(.horizontal)
                        
                }
                .padding(.vertical, 40)
                
            }
            .padding(.vertical)
            
            VStack {
                Button(action: {controlModel.isShowingRequest = false}) {
                    Image(systemName: "xmark")
                        .font(Font.body.weight(.bold))
                        .padding(40)
                        .padding(.top, 40)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                Spacer()
                    
            }

        }
        .ignoresSafeArea()
    }
}

struct Resquesting_Previews: PreviewProvider {
    static var previews: some View {
        Resquesting()
    }
}
