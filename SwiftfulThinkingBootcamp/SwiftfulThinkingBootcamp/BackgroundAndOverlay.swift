//
//  BackgroundAndOverlay.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 21/06/22.
//

import SwiftUI

struct BackgroundAndOverlay: View {
    var body: some View {
        Image("telegram")
            .resizable()
            .scaledToFit()
            .frame(width: 180, height: 180)
            .shadow(color: Color(.black), radius: 1, x: 0.5, y: 0.5)
//            .scaledToFill()
            
//            .foregroundColor(.white)
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        LinearGradient(gradient: Gradient(colors:[Color.white]), startPoint: .topLeading,
                                       endPoint: .bottomTrailing)
                    )
                    .frame(width: 200, height: 200)
                    .shadow(color: .black, radius: 5, x: 0.0, y: 0.0)
                    .overlay(
                    Circle()
                        .fill(Color("telegramNotification"))
                        .frame(width: 80, height: 80)
                        .overlay(
                            Text("8")
                                .font(.system(size: 40, weight:.semibold))
                                .font(.headline)
                                .foregroundColor(.white)
                        )
                        .position(x: 188, y: 8)
                        .opacity(0.9)
                        .shadow(color: Color(.black), radius: 1, x: 0.5, y: 0.5)
                    
                    , alignment: .topTrailing)
            )
            .overlay(
                Text("Telegram")
                    .font(.system(size: 28, weight:.semibold))
                    .font(.headline)
                    .foregroundColor(Color("opposite"))
                    .shadow(color: Color("opposite"), radius: 1, x: 0.5, y: 0.5)
                    .position(x: 90, y: 230)
            )
        
            
    }
}

struct BackgroundAndOverlay_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlay()
            
            
    }
}
