//
//  YourRequest.swift
//  myRidePal
//
//  Created by Long Hai on 9/24/22.
//

import SwiftUI

struct YourRequest: View {
    @EnvironmentObject var model: AuthViewModel
    @EnvironmentObject var controlModel: ViewControlModel
    var body: some View {
        let user = model.currentUser8
        ZStack {
            VStack {
                Text("Your Request")
                    .fontWeight(.bold)
                    .font(.system(size: 40))
                    .padding(20)
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer().frame(height: 10)
                
                ScrollView(.vertical, showsIndicators: false) {
                    Menu {
                        Button("Delete", role: .destructive) {
                            Text("Delete")
                            Image(systemName: "xmark")
                                .foregroundColor(.red)
                        }
                    } label: {
                        Actab(imageURL: user.imageURL, name: user.name, time: user.time, from: user.from, destination: user.destination, color: "mint")
                            .foregroundColor(.black)
                    }

                }
            }
            
        }
    }
}

struct YourRequest_Previews: PreviewProvider {
    static var previews: some View {
        YourRequest().previewDevice("iPhone 13")
            .environmentObject(AuthViewModel())
            .environmentObject(ViewControlModel())
    }
}
