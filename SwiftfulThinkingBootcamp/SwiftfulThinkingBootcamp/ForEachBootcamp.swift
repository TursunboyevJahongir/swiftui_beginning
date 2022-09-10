//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 07/09/22.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi","Hello","Hey everyone"]
    let myString: String = "Hello"
    var body: some View {
        VStack{
            //            ForEach(0..<10){ index in
            //                Text("Hi: \(index)")
            //            }
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
            
            ForEach(0..<100){ index in
                Circle().frame(height: 50)
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
