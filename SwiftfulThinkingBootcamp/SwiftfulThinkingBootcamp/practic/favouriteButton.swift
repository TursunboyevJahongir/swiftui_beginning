//
//  FavouriteButton.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 20/09/22.
//

import SwiftUI

struct favouriteButton: View {
    @State var favourite: Bool = false
    var body: some View {
        Button{
            favourite.toggle()
        } label:{
            Image(systemName: favourite ? "bookmark.fill" : "bookmark")
                .resizable()
                .frame(width: 15, height: 23)
                .accentColor(.yellow)
                .padding(.trailing)
            
        }
    }
}
