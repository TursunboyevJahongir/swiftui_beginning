//
//  PaddeingAndSpacerBootcamp .swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 05/09/22.
//

import SwiftUI

struct PaddeingAndSpacerBootcamp_: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom,20)
            
            Text("This is the description of what we will do on this screen.It is multiple lines and we will align the text to the leading edge.")
        }
        .padding()
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0.0, y: 10)
        )
        .padding(.horizontal, 10)
    }
}

struct PaddeingAndSpacerBootcamp__Previews: PreviewProvider {
    static var previews: some View {
        PaddeingAndSpacerBootcamp_()
    }
}
