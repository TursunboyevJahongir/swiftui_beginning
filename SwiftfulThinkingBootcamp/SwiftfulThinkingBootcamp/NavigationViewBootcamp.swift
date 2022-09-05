//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 02/09/22.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView{
            ScrollView{
                
                NavigationLink(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/,
                               destination: MyOtherScreen())
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarHidden(true)
        }
    }
}

struct MyOtherScreen : View {
    var body : some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen")
                .navigationBarHidden(true)
            NavigationLink("Click here",destination: Text("3rd screen!"))
            
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
