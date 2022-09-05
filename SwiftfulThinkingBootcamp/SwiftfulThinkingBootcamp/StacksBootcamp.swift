//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 28/06/22.
//

import SwiftUI

struct StacksBootcamp: View {
    // Vstacks -> Verical
    // Hstacks -> Harizontal
    // Zstacks -> zIndex (back to font)
    var body:some View{
        ZStack( content: {
           Rectangle()
                .fill(Color.red)
                .frame(width:200,height:200)
            
            Rectangle()
                .fill(Color.green)
                .frame(width:150,height:150)
            
            Rectangle()
                .fill(Color.orange)
                .frame(width:100,height:100)
        })
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
