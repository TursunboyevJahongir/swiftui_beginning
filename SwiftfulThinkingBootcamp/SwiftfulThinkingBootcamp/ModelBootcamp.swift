//
//  ModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 11/09/22.
//

import SwiftUI

struct UserModel:Identifiable {
    let id:String = UUID().uuidString
    let dispayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    @State var users: [UserModel] = [
        //        "Nick", "Emily", "Samantha", "Chris"
        UserModel(dispayName: "Nick", userName: "Nick123", followerCount: 100, isVerified: true),
        UserModel(dispayName: "Emily", userName: "itsemily1995", followerCount: 55, isVerified: false),
        UserModel(dispayName: "Samantha", userName: "ninja", followerCount: 355, isVerified: false),
        UserModel(dispayName: "Chris", userName: "chris2009", followerCount: 88, isVerified: true),
    ]
    
    var body: some View {
        NavigationView{
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack {
                            Text(user.dispayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack{
                            Text(("\(user.followerCount)"))
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
