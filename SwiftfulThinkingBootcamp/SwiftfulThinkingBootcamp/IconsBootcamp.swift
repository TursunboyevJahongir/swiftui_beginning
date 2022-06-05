//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 27/05/22.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
//            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .scaledToFit()
//            .scaledToFill()
//            .font(.caption)//.title .largeTitle
//            .font(.system(size: 200))
//            .foregroundColor(.red)
//            .frame(width: 300, height: 300)
//            .clipped()
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
