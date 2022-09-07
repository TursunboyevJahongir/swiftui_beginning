//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 06/09/22.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack {
            HStack(spacing : 0){
                Image(systemName : "xmark")
                Spacer()
                Image(systemName : "gear")
            }
            .font(.title)
            //.background(Color.yellow)
            .padding (.horizontal)
            //.background(Color.blue)
            Spacer()
            Rectangle()
                .frame(height: 55)
        }
        VStack{
            HStack(spacing:0){
                Rectangle()
                    .frame(width: 100, height:100)
                Spacer()
                    .frame(height: 10)
                    .background(.orange)
                
                Rectangle()
                    .fill(.red)
                    .frame(width: 100, height:100)
            }.background(.blue)
            HStack{
                Rectangle()
                    .frame(width: 100, height:100)
                Spacer()
                    .frame(height: 10)
                    .background(.orange)
                
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height:100)
            }
            HStack(spacing:0){
                Spacer()
                    .frame(height: 10)
                //                    .background(.orange)
                Rectangle()
                    .frame(width: 50, height:50)
                Spacer()
                    .frame(height: 10)
                //                    .background(.orange)
                
                Rectangle()
                    .fill(.red)
                    .frame(width: 50, height:50)
                Spacer()
                    .frame(height: 10)
                //                    .background(.orange)
                
                Rectangle()
                    .fill(.green)
                    .frame(width: 50, height:50)
                Spacer()
                    .frame(height: 10)
                //                    .background(.orange)
            }
        }
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
