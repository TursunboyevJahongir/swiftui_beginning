//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 24/09/22.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        ScrollView{
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                .frame(maxWidth:.infinity,alignment:.leading)
                
                ForEach(0..<10) {index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
//        .background(Color.red)
        .background(
            Color.red
//                .edgesIgnoringSafeArea(.all) //old
                .ignoresSafeArea(edges: .all)
        )
        
        
        
        
//        ZStack{
//            // background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//
//            // foreground
//            VStack{
//                Text("Hello, World!")
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.red)
//        }
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
