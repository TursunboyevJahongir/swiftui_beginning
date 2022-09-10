//
//  TabViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 08/09/22.
//

import SwiftUI

struct TabViewBootcamp: View {
    @State var selectedTab: Int = 0
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    var body: some View {
        
        //                TabView {
        //                   ForEach(icons, id:\.self){ icon in
        //                        Image(systemName: icon)
        //                            .resizable()
        //                            .scaledToFit()
        //                            .padding(30)
        //                   }
        //                }
        //                .background(
        //                    RadialGradient(gradient: Gradient(colors: [Color.red,Color.blue] ) , center :
        //                    .center , startRadius: 5,endRadius: 300)
        //                    )
        //                .frame(height: 300)
        //                .tabViewStyle(PageTabViewStyle())
        
        TabView(selection : $selectedTab ) {
            HomeView()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text ("Home")
                }
                .tag(0)
            Text("BROWSE TAB")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag (1)
            Text("PROFILE TAB")
                .tabItem {
                    Image (systemName: "person.fill")
                    Text("Profile")
                }
                .tag (2)
        }
        .accentColor(.black)
        
        
        
        //            in: TabView {
        //            RoundedRectangle(cornerRadius: 25.0)
        //                .foregroundColor(.red)
        //            RoundedRectangle(cornerRadius: 25.0)
        //            RoundedRectangle(cornerRadius: 25.0)
        //                .foregroundColor(.green)
        //        }
        //        .frame(height: 300)
        //        .tabViewStyle(PageTabViewStyle())
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}

struct HomeView: View {
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            Text("Home Tab")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}
