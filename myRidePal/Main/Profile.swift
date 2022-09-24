//
//  Profile.swift
//  myRidePal
//
//  Created by Long Hai on 9/24/22.
//

import SwiftUI
import Kingfisher
import GoogleSignIn
import Firebase

struct Profile: View {
    @AppStorage("loginStatus") var loginStatus = false
    var body: some View {
        ZStack {
            VStack {
                Text("Profile")
                    .fontWeight(.bold)
                    .font(.system(size: 40))
                    .padding(20)
                    .padding(.horizontal, 20)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer().frame(height: 10)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    Spacer().frame(height: 20)
                    
                    KFImage(URL(string: "https://www.dropbox.com/s/g9ar4p27ir3g4db/juan-encalada-WC7KIHo13Fc-unsplash.jpg?dl=1"))
                        .resizable()
                        .scaledToFill()
                        .frame(width: 170, height: 170)
                        .clipShape(Circle())
                
                    Text("Peter Parker")
                        .fontWeight(.bold)
                        .font(.system(size: 25))
                        .padding(20)
                        .padding(.horizontal, 20)
                        //.frame(maxWidth: .infinity, alignment: .leading)
                    
                    VStack {
                        HStack {
                            Text("Email")
                                .fontWeight(.medium)
                                .font(.system(size: 20))
                                .padding()
                            Spacer()
                            Text("abcd@columbia.edu")
                                .fontWeight(.medium)
                                .font(.system(size: 25))
                                .padding()
                        }
                        HStack {
                            Text("Cell")
                                .fontWeight(.medium)
                                .font(.system(size: 20))
                                .padding()
                            Spacer()
                            Text("(123) 456 7890")
                                .fontWeight(.medium)
                                .font(.system(size: 25))
                                .padding()
                        }
                    }
                }
            }
            .padding(.horizontal)
            
            VStack {
                Spacer()
        
                Button(action: {
                    GIDSignIn.sharedInstance.signOut()
                    try? Auth.auth().signOut()
                    
                    withAnimation {
                        loginStatus = false
                    }
                }
                ) {
                    Text("Logout")
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 15)
                        .background(.red)
                        .foregroundColor(.black)
                        .cornerRadius(30)
                        .padding(.horizontal, 40)
                        
                }
                .padding(.vertical, 30)
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile().previewDevice("iPhone 12")
    }
}
