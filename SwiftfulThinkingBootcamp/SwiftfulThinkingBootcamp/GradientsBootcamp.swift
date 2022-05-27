//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 27/05/22.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                LinearGradient(
//                    gradient: Gradient(colors: [Color.red,Color.blue]),
//                    startPoint: .topLeading,
//                    endPoint: .bottom
//                )
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.red,Color.blue]),
//                    center: .leading,
//                    startRadius: 5,
//                    endRadius: 400
//                )
                
                AngularGradient(
                    gradient: Gradient(colors: [Color.red,Color.blue]),
                    center: .topLeading,
                    angle: .degrees(180 + 45)
                )
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
