//
//  AdvertMain.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 11/09/22.
//
import SwiftUI

struct AdvertMain: View {
    
    @StateObject var adverts:AdvertViewModel = AdvertViewModel()//ObservedObject will be reload on refresh page
    
    var body: some View {
        
        ScrollView {
            LazyVStack {
                if adverts.isLoading {
                    SimpleLoadAnimation()
                } else {
                    ForEach (adverts.advertsList){ advert in
                        VStack(alignment: .leading, spacing: 0){
                            TabView(content: {
                                ForEach(advert.images, id: \.self) { img in
                                    Image(img)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .scaledToFill()
                                        .frame(width: 385,height: 230)
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
                                        
                                        Text("11111 $")
                                            .font(.system(size: 20, weight: .bold))
                                        Spacer()
                                        favouriteButton(favourite: advert.isFavorite)
                                    })
                                    Text("\(advert.room) комн,\(advert.size),этаж \(advert.floor)")
                                        .font(.title3)
                                    VStack(alignment:.leading,spacing: 0){
                                        HStack(spacing: 2) {
                                            if (advert.nierMetro != nil) {
                                                Text("M").bold().foregroundColor(Color.red)
                                                    .font(.custom(
                                                        "Hoefler Text",
                                                        fixedSize: 18))
                                                
                                                Text("\(advert.nierMetro!), \(advert.toMetro!)")
                                                    .font(.custom(
                                                        "AppleSDGothicNeo-Thin",
                                                        fixedSize: 15))
                                            }
                                            
                                        }
                                        
                                        Text("\(advert.address.address)")
                                            .font(.custom(
                                                "AppleSDGothicNeo-Thin",
                                                fixedSize: 15))
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
                                        .background(Color.gray.opacity(0.7))
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
}

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

struct AdvertMain_Previews: PreviewProvider {
    static var previews: some View {
        AdvertMain()
            .previewInterfaceOrientation(.portrait)
    }
}
