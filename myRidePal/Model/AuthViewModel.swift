//
//  AuthViewModel.swift
//  myRidePal
//
//  Created by Long Hai on 9/23/22.
//

import Foundation
import Firebase
import SwiftUI
import FirebaseFirestoreSwift

class AuthViewModel: ObservableObject {
    @Published var currentUser = User()
    @Published var currentUser2 = User()
    @Published var currentUser3 = User()
    @Published var currentUser4 = User()
    @Published var currentUser5 = User()
    @Published var currentUser6 = User()
    @Published var currentUser7 = User()
    @Published var currentUser8 = User()
    
    
    init() {
        self.fetchUser()
        self.fetchUser2()
        self.fetchUser3()
        self.fetchUser4()
        self.fetchUser5()
        self.fetchUser6()
        self.fetchUser7()
        self.fetchUser8()
    }
    
    //-- fetching User
    func fetchUser() {
        
        let docRef = Firestore.firestore().collection("Demo").document("user1")
        
        docRef.addSnapshotListener { (document, error) in
            guard error == nil else {
                print("error", error ?? "")
                return
            }
            
            if let document = document, document.exists {
                let data = document.data()
                if let data = data {
                    
                    self.currentUser.name = data["name"] as? String ?? "name"
                    self.currentUser.imageURL = data["imageURL"] as? String ?? "image"
                    self.currentUser.from = data["from"] as? String ?? "from"
                    
                    self.currentUser.destination = data["destination"] as? String ?? "des"
                    self.currentUser.time = data["time"] as? String ?? "time"
                    
                    self.currentUser.description = data["description"] as? String ?? "description"
                    
                }
            }
        }
    }
    
    func fetchUser2() {
        
        let docRef = Firestore.firestore().collection("Demo").document("user2")
        
        docRef.addSnapshotListener { (document, error) in
            guard error == nil else {
                print("error", error ?? "")
                return
            }
            
            if let document = document, document.exists {
                let data = document.data()
                if let data = data {
                    
                    self.currentUser2.name = data["name"] as? String ?? "name"
                    self.currentUser2.imageURL = data["imageURL"] as? String ?? "image"
                    self.currentUser2.from = data["from"] as? String ?? "from"
                    
                    self.currentUser2.destination = data["destination"] as? String ?? "des"
                    self.currentUser2.time = data["time"] as? String ?? "time"
                    
                    self.currentUser2.description = data["description"] as? String ?? "description"
                    
                }
            }
        }
    }
    
    func fetchUser3() {
        
        let docRef = Firestore.firestore().collection("Demo").document("user3")
        
        docRef.addSnapshotListener { (document, error) in
            guard error == nil else {
                print("error", error ?? "")
                return
            }
            
            if let document = document, document.exists {
                let data = document.data()
                if let data = data {
                    
                    self.currentUser3.name = data["name"] as? String ?? "name"
                    self.currentUser3.imageURL = data["imageURL"] as? String ?? "image"
                    self.currentUser3.from = data["from"] as? String ?? "from"
                    
                    self.currentUser3.destination = data["destination"] as? String ?? "des"
                    self.currentUser3.time = data["time"] as? String ?? "time"
                    
                    self.currentUser3.description = data["description"] as? String ?? "description"
                    
                }
            }
        }
    }
    
    func fetchUser4() {
        
        let docRef = Firestore.firestore().collection("Demo").document("user4")
        
        docRef.addSnapshotListener { (document, error) in
            guard error == nil else {
                print("error", error ?? "")
                return
            }
            
            if let document = document, document.exists {
                let data = document.data()
                if let data = data {
                    
                    self.currentUser4.name = data["name"] as? String ?? "name"
                    self.currentUser4.imageURL = data["imageURL"] as? String ?? "image"
                    self.currentUser4.from = data["from"] as? String ?? "from"
                    
                    self.currentUser4.destination = data["destination"] as? String ?? "des"
                    self.currentUser4.time = data["time"] as? String ?? "time"
                    
                    self.currentUser4.description = data["description"] as? String ?? "description"
                    
                }
            }
        }
    }
    
    func fetchUser5() {
        
        let docRef = Firestore.firestore().collection("Demo").document("user5")
        
        docRef.addSnapshotListener { (document, error) in
            guard error == nil else {
                print("error", error ?? "")
                return
            }
            
            if let document = document, document.exists {
                let data = document.data()
                if let data = data {
                    
                    self.currentUser5.name = data["name"] as? String ?? "name"
                    self.currentUser5.imageURL = data["imageURL"] as? String ?? "image"
                    self.currentUser5.from = data["from"] as? String ?? "from"
                    
                    self.currentUser5.destination = data["destination"] as? String ?? "des"
                    self.currentUser5.time = data["time"] as? String ?? "time"
                    
                    self.currentUser5.description = data["description"] as? String ?? "description"
                    
                }
            }
        }
    }
    
    func fetchUser6() {
        
        let docRef = Firestore.firestore().collection("Demo").document("user6")
        
        docRef.addSnapshotListener { (document, error) in
            guard error == nil else {
                print("error", error ?? "")
                return
            }
            
            if let document = document, document.exists {
                let data = document.data()
                if let data = data {
                    
                    self.currentUser6.name = data["name"] as? String ?? "name"
                    self.currentUser6.imageURL = data["imageURL"] as? String ?? "image"
                    self.currentUser6.from = data["from"] as? String ?? "from"
                    
                    self.currentUser6.destination = data["destination"] as? String ?? "des"
                    self.currentUser6.time = data["time"] as? String ?? "time"
                    
                    self.currentUser6.description = data["description"] as? String ?? "description"
                    
                }
            }
        }
    }
    
    func fetchUser7() {
        
        let docRef = Firestore.firestore().collection("Demo").document("user7")
        
        docRef.addSnapshotListener { (document, error) in
            guard error == nil else {
                print("error", error ?? "")
                return
            }
            
            if let document = document, document.exists {
                let data = document.data()
                if let data = data {
                    
                    self.currentUser7.name = data["name"] as? String ?? "name"
                    self.currentUser7.imageURL = data["imageURL"] as? String ?? "image"
                    self.currentUser7.from = data["from"] as? String ?? "from"
                    
                    self.currentUser7.destination = data["destination"] as? String ?? "des"
                    self.currentUser7.time = data["time"] as? String ?? "time"
                    
                    self.currentUser7.description = data["description"] as? String ?? "description"
                    
                }
            }
        }
    }
    
    func fetchUser8() {
        
        let docRef = Firestore.firestore().collection("Demo").document("user8")
        
        docRef.addSnapshotListener { (document, error) in
            guard error == nil else {
                print("error", error ?? "")
                return
            }
            
            if let document = document, document.exists {
                let data = document.data()
                if let data = data {
                    
                    self.currentUser8.name = data["name"] as? String ?? "name"
                    self.currentUser8.imageURL = data["imageURL"] as? String ?? "image"
                    self.currentUser8.from = data["from"] as? String ?? "from"
                    
                    self.currentUser8.destination = data["destination"] as? String ?? "des"
                    self.currentUser8.time = data["time"] as? String ?? "time"
                    
                    self.currentUser8.description = data["description"] as? String ?? "description"
                    
                }
            }
        }
    }
}
