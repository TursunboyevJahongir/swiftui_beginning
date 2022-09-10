//
//  ScrolViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 07/09/22.
//

import SwiftUI

struct ScrolViewBootcamp: View {
    var body: some View {
        //        ScrollView (.vertical,showsIndicators:true, content: {
        //            VStack {
        //                ForEach (0..<50){ index in
        //                    Rectangle()
        //                        .fill(Color.blue)
        //                        .frame(height:300)
        //                }
        //            }
        //        })
        
        //        ScrollView (.horizontal,showsIndicators:true, content: {
        //            HStack {
        //                ForEach (0..<50){ index in
        //                    Rectangle()
        //                        .fill(Color.blue)
        //                        .frame(width:300,height:300)
        //                }
        //            }
        //        })
        
        ScrollView  {
            LazyVStack {
                ForEach(0..<100){ index in
                    ScrollView(.horizontal,showsIndicators: true,content: {
                        LazyHStack {
                            ForEach(0..<20){ index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width:200,height:200)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    })
                    
                }
            }
        }
    }
}

struct ScrolViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrolViewBootcamp()
    }
}
