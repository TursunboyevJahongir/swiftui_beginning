//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 23/09/22.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            
            LazyVGrid (
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header:
                                Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue)
                        .padding()
                    ){
                        ForEach(0..<20) { index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    }
                    
                    Section(header:
                                Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.red)
                        .padding()
                    ){
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(.green)
                                .frame(height: 150)
                        }
                    }
                })
        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
