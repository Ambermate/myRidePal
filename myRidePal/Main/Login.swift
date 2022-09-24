//
//  SwiftUIView.swift
//  myRidePal
//
//  Created by Long Hai on 9/24/22.
//

import SwiftUI
import CryptoKit
import AuthenticationServices
import FirebaseAuth

import Firebase
import GoogleSignIn

struct Login: View {
    @AppStorage("loginStatus") var loginStatus = false
    
    //-- Google Method
    
    // Loading Indicator
    @State var isLoading: Bool = false
    
    func getRootViewController() -> UIViewController {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return .init()
        }
        
        guard let root = screen.windows.first?.rootViewController else {
            return .init()
        }
        
        return root
    }
    
    
    func GoogleHandleLogin() {
        //--  Sign In
        
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }
        
        // Create Google Sign In configuration object.
        let config = GIDConfiguration(clientID: clientID)
        
        isLoading = true
        
        GIDSignIn.sharedInstance.signIn(with: config, presenting: getRootViewController()) {[self] user, err in
            
            if let error = err {
                isLoading = false
                print(error.localizedDescription)
                return
            }
            
            guard
                let authentication = user?.authentication,
                let idToken = authentication.idToken
            else {
                isLoading = false
                
                return
            }
            
            let credential = GoogleAuthProvider.credential(withIDToken: idToken,
                                                           accessToken: authentication.accessToken)
            
            // Firebase Auth
            Auth.auth().signIn(with: credential) { result, err in
                isLoading = false
                
                if let error = err {
                    print(error.localizedDescription)
                    return
                }
                
                //-- Displaying User name
                guard let user = result?.user else {
                    return
                }
                print(user.displayName ?? "Success!")
                
                print("\(String(describing: Auth.auth().currentUser?.uid))")
                
                //-- Updating User as logged in
                withAnimation {
                    loginStatus = true
                }
            }
            
        }
    }
    
    var body: some View {
        ZStack {
            Color(UIColor(named: "banana")!)
            
            VStack {
                Image("car")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("my")
            }
            
            VStack {
                Spacer()
             
                Button(action: {GoogleHandleLogin()}) {
                    Text("LOGIN")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 20)
                        .background(.white)

                        .foregroundColor(Color(UIColor(named: "green")!))
                        .cornerRadius(30)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color(UIColor(named: "green")!), lineWidth: 5)
                        )
                        .padding(.horizontal, 40)
                        .padding(.bottom, 50)
                }
            }
            
        }
        .ignoresSafeArea()
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login().previewDevice("iPhone 13")
    }
}
