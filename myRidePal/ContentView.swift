//
//  ContentView.swift
//  myRidePal
//
//  Created by Long Hai on 9/23/22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("loginStatus") var loginStatus = false
    var body: some View {
        
        if loginStatus {
            TabView {
                Tracker()
               
                Activity()
    
                Profile()
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        } else {
            Login()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
