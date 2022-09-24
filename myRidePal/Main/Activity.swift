//
//  Activity.swift
//  myRidePal
//
//  Created by Long Hai on 9/23/22.
//

import SwiftUI

struct Activity: View {
    @EnvironmentObject var model: AuthViewModel
    @EnvironmentObject var controlModel: ViewControlModel
    
    //@available(iOS 16.0, *)
    var body: some View {
        let user = model.currentUser
        let user2 = model.currentUser2
        let user3 = model.currentUser3
        let user4 = model.currentUser4
        
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
                    
                    Menu {
                        Button(action: {}) {
                           
                            Text("Contact")
                            Image(systemName: "phone.fill")
                        }
                        Button(action: {}) {
                            Text("Message")
                            Image(systemName: "message.fill")
                        }
                        
                    } label: {
                        Actab(imageURL: user.imageURL, name: user.name, time: user.time, from: user.from, destination: user.destination, color: "mint")
                            .foregroundColor(.black)
                            .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                    }
                    
                    Spacer().frame(height: 20)
                    
                    Menu {
                        Button(action: {}) {
                           
                            Text("Contact")
                            Image(systemName: "phone.fill")
                        }
                        Button(action: {}) {
                            Text("Message")
                            Image(systemName: "message.fill")
                        }
                        
                    } label: {
                        Actab(imageURL: user2.imageURL, name: user2.name, time: user2.time, from: user2.from, destination: user2.destination, color: "mint")
                            .foregroundColor(.black)
                    }
                    
                    Spacer().frame(height: 20)
                        
                        
                    Menu {
                        Button(action: {}) {
                           
                            Text("Contact")
                            Image(systemName: "phone.fill")
                        }
                        Button(action: {}) {
                            Text("Message")
                            Image(systemName: "message.fill")
                        }
                        
                    } label: {
                        Actab(imageURL: user3.imageURL, name: user3.name, time: user3.time, from: user3.from, destination: user3.destination, color: "mint")
                            .foregroundColor(.black)
                    }
                    Spacer().frame(height: 20)
                    
                    
                    Menu {
                        Button(action: {}) {
                           
                            Text("Contact")
                            Image(systemName: "phone.fill")
                        }
                        Button(action: {}) {
                            Text("Message")
                            Image(systemName: "message.fill")
                        }
                        
                    } label: {
                        Actab(imageURL: user4.imageURL, name: user4.name, time: user4.time, from: user4.from, destination: user4.destination, color: "mint")
                            .foregroundColor(.black)
                    }
                    
                    Spacer().frame(height: 20)
                        
                }
            }
            
            VStack {
                Spacer()
        
                Button(action: {controlModel.isShowingRequest = true}) {
                    Text("Invite")
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 15)
                        .background(Color(UIColor(named: "mint")!))
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

struct Activity_Previews: PreviewProvider {
    static var previews: some View {
        Activity().previewDevice("iPhone 12").environmentObject(AuthViewModel())
            .environmentObject(ViewControlModel())
    }
}
