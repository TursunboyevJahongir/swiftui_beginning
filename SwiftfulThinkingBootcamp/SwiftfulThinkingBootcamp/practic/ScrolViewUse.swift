//
//  ScrolViewUse.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 07/09/22.
//

import SwiftUI


struct ScrolViewUse: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach (0..<50){ index in
                    VStack(alignment: .leading, spacing: 0){
                        TabView(content: {
                            ForEach(images.shuffled(), id: \.self) { img in
                                Image(img)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .scaledToFill()
                                    .frame(width: 370,height: 230)
                                    .cornerRadius(10)
                                
                            }
                        })
                        .frame(height: 230)
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                        .indexViewStyle(.page(backgroundDisplayMode: .always))
                        Spacer()
                        
                        VStack(alignment: .leading,spacing: 0){
                            VStack(alignment: .leading,spacing: 0){
                                HStack(alignment: .top,spacing: 0,content: {
                                    
                                    Text("\(Int.random(in: 50000..<150000)) $")
                                        .font(.system(size: 20, weight: .bold))
                                    Spacer()
                                    favouriteButton()
                                })
                                Text("\(Int.random(in: 1..<5)) комн,\(Int.random(in: 25..<40)).\(Int.random(in: 5..<40)) m²,этаж \(Int.random(in: 1..<7))/\(Int.random(in: 10..<15))")
                                    .font(.title3)
                                VStack(alignment:.leading,spacing: 0){
                                    HStack(spacing: 2) {
                                        Text("M").bold().foregroundColor(Color.red)
                                            .font(.custom(
                                                "Hoefler Text",
                                                fixedSize: 10))
                                        
                                        Text("Tinchlik, 10 daqiqa")
                                            .font(.custom(
                                                "AppleSDGothicNeo-Thin",
                                                fixedSize: 10))
                                    }
                                    
                                    Text("Toshkent,Farobiy ko'chasi, 19")
                                        .font(.custom(
                                            "AppleSDGothicNeo-Thin",
                                            fixedSize: 10))
                                }
                                
                                HStack(alignment: .top, spacing: 1,content: {
                                    Button {
                                    } label: {
                                        Text("Bordered")
                                    }
                                    .frame(width: 310, height: 50)
                                    .background(Color.yellow)
                                    .foregroundColor(Color.black)
                                    .cornerRadius(10)
                                    
                                    Spacer()
                                    
                                    Menu {
                                        Button {
                                            
                                        } label: {
                                            Text("O'zbekcha")
                                        }
                                        Button {
                                            
                                        } label: {
                                            Text("Русский")
                                        }
                                        Button {
                                            
                                        } label: {
                                            Text("English")
                                        }
                                    } label: {
                                        Text("...")
                                            .font(.system(size: 30, weight: .bold))
                                            .padding(.bottom)
                                    }
                                    
                                    
                                    .frame(width: 40, height: 50)
                                    .background(Color.black)
                                    .cornerRadius(10)
                                    
                                })
                            }.padding(.leading)
                                .padding(.trailing)
                        }
                        
                        
                    }
                }
            }
        }
    }
}

struct favouriteButton: View {
    @State var favourite: Bool = false
    var body: some View {
        Button{
            favourite.toggle()
        } label:{
            Image(systemName: favourite ? "bookmark.fill" : "bookmark")
                .resizable()
                .frame(width: 13, height: 20)
                .padding(.trailing)
        }
    }
}

struct ScrolViewUse_Previews: PreviewProvider {
    static var previews: some View {
        ScrolViewUse()
            .previewInterfaceOrientation(.portrait)
    }
}
