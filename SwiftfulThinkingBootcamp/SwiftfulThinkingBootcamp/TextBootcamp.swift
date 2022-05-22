//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 22/05/22.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello Swift".capitalized)
//            .font(.body)
//            .fontWeight(.heavy)
//            .bold()
//            .underline(true,color: Color.red)
//            .italic()
//            .strikethrough(true,color: Color.green)
//            .font(.system(size: 24, weight:.semibold,design: .serif))
//            .baselineOffset(-50.0)//qaroelar orasidagi ochiq
//            .kerning(10)//harflarning orasidagi ochiq
            .multilineTextAlignment(.center)
            .foregroundColor(.green)
            .frame(width: 200, height: 100, alignment: .center)
            .minimumScaleFactor(0.1)
        
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
