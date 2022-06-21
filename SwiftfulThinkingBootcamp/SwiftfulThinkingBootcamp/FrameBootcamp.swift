//
//  FrameBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 19/06/22.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
//        Text("Hello, World!")
//            .background(Color.green)
////            .frame(width: 300, height: 300, alignment: .leading)
//            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .center)
//            .background(Color.red)
        
            Text("Hello, World!")
            .background(.red)
            .frame(height: 100,alignment: .top)
            .background(.orange)
            .frame(width: 150)
            .background(.purple)
            .frame(maxWidth:.infinity,alignment: .leading)
            .background(.pink)
            .frame(height: 400)
            .background(.green)
            .frame(maxHeight:.infinity,alignment: .top)
            .background(.yellow)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
