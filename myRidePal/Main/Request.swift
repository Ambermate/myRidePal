//
//  Request.swift
//  myRidePal
//
//  Created by Long Hai on 9/23/22.
//

import SwiftUI

struct Request: View {
    @EnvironmentObject var model: AuthViewModel
    @EnvironmentObject var controlModel: ViewControlModel
    var body: some View {
        let user5 = model.currentUser5
        let user6 = model.currentUser6
        let user7 = model.currentUser7
        let user8 = model.currentUser8
        
        ZStack {
            VStack {
                Text("Requesting")
                    .fontWeight(.bold)
                    .font(.system(size: 40))
                    .padding(20)
                    .padding(.horizontal, 20)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer().frame(height: 10)
                
                ScrollView(.vertical, showsIndicators: false) {
                    Actab(imageURL: user5.imageURL, name: user5.name, time: user5.time, from: user5.from, destination: user5.destination, color: "purple")
                    
                    Actab(imageURL: user6.imageURL, name: user6.name, time: user6.time, from: user6.from, destination: user6.destination, color: "purple")
                    
                    
                    Actab(imageURL: user7.imageURL, name: user7.name, time: user7.time, from: user7.from, destination: user7.destination, color: "purple")
                    
                    
                    Actab(imageURL: user8.imageURL, name: user8.name, time: user8.time, from: user8.from, destination: user8.destination, color: "purple")
                }
            }
            
            VStack {
                Spacer()
        
                Button(action: {controlModel.isShowingRequest = true}) {
                    Text("Resquest")
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 15)
                        .background(Color(UIColor(named: "purple")!))
                        .foregroundColor(.black)
                        .cornerRadius(30)
                        .padding(.horizontal, 30)
                        
                }
                .padding(.vertical, 30)
            }
        }
        
        .fullScreenCover(isPresented: $controlModel.isShowingRequest, onDismiss: {}) {
            Resquesting()
        }
    }
}

struct Request_Previews: PreviewProvider {
    static var previews: some View {
        Request().environmentObject(AuthViewModel())
            .environmentObject(ViewControlModel())
    }
}
