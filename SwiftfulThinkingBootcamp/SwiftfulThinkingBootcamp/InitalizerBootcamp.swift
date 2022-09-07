//
//  InitalizerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 06/09/22.
//

import SwiftUI

struct InitalizerBootcamp: View {
    
    let backgroundColor:Color
    let count: Int
    let title: String
    
    init(count:Int,fruit: Fruit){
        //        self.backgroundColor = backgroundColor
        self.count = count
        
        if fruit == .apple{
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
        
        //        self.title = title
        //
        //        if title == "Apples" {
        //            self.backgroundColor = .red
        //
        //        }else {
        //            self.backgroundColor = .orange
        //        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12 ){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitalizerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            InitalizerBootcamp(count: 100, fruit: .apple)
            InitalizerBootcamp(count: 46, fruit: .orange)
        }
    }
}
