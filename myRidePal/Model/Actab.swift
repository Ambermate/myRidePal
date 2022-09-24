//
//  Actab.swift
//  myRidePal
//
//  Created by Long Hai on 9/23/22.
//

import SwiftUI
import Kingfisher

struct Actab: View {
    let imageURL: String
    let name: String
    let time: String
    let from: String
    let destination: String
    let color: String
    var body: some View {
        VStack {
            HStack {
                KFImage(URL(string: imageURL))
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    
                Spacer().frame(width: 30)
                
                VStack {
                    HStack {
                        Text(name)
                            .fontWeight(.bold)
                            .lineLimit(nil)
                        Spacer()
                        Text(time)
                            .foregroundColor(.gray)
                            .padding(.horizontal)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    HStack {
                        Text(from)
                        Image(systemName: "arrow.right")
                        Text(destination)
                            .lineLimit(nil)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(maxWidth: .infinity)
            .padding()
            
            .background(Color(UIColor(named: color)!))
        .cornerRadius(20)
        }
        .padding(.horizontal)
    }
}
