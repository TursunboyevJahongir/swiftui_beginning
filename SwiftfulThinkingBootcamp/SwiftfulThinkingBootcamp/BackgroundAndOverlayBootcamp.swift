//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 21/06/22.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//
//            .background(
////                Color.red
////                LinearGradient(gradient: Gradient(colors:[Color.red,Color.blue]), startPoint: .leading, endPoint: .trailing)
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors:[Color.red,Color.blue]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100, height: 100, alignment: .center)
//            )
//
//            .background(
//            Circle()
//                .fill(LinearGradient(gradient: Gradient(colors:[Color.blue,Color.red]), startPoint: .leading, endPoint: .trailing))
//                .frame(width: 120, height: 120, alignment: .center)
//            )
        
        
//        Circle()
//            .fill(.pink)
//            .frame(width: 100, height: 100, alignment: .center)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            )
//            .background(
    //            Circle()
    //                .fill(.purple)
    //                .frame(width: 110, height: 110)
//            )
        
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 50, height: 50)
//            ,alignment: .topLeading
//            )
//            .background(
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150, alignment: Alignment.center)
//                ,alignment: .bottomTrailing
//            )
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors:[Color("CustomPink"),Color("CustomBlue")]), startPoint: .topLeading,
                                       endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color("CustomBlue"), radius: 10, x: 0.0, y: 10)
                    .overlay(
                    Circle()
                        .fill(.blue)
                        .frame(width: 35, height: 35)
                        .overlay(
                            Text("5")
                                .font(.headline)
                                .foregroundColor(.white)
                        )
                        .shadow(color: Color("CustomBlue"), radius: 10, x: 5, y: 5)
                    , alignment: .bottomTrailing)
            )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
