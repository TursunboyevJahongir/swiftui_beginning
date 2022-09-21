//
//  AdvertMain.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 11/09/22.
//
import SwiftUI

struct AdvertMain: View {
    @StateObject var adverts:AdvertViewModel = AdvertViewModel()//ObservedObject will be reload on refresh page
    @State private var address = "Toshkent"
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    if adverts.isLoading {
                        SimpleLoadAnimation()
                    } else {
                        ForEach (adverts.advertsList){ advert in
                            VStack(alignment: .leading, spacing: 0){
                                
                                TabView(content: {
                                    ForEach(Array(advert.images.enumerated()), id: \.element) { index, img in
                                        NavigationLink(destination: ShowAdvertView(advert: advert,selectionImage:index+1)) {
                                            Image(img)
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .scaledToFill()
                                                .frame(width: 385,height: 230)
                                                .cornerRadius(10)
                                                .tag(index)
                                        }
                                        .buttonStyle(.plain)
                                        
                                    }
                                })
                                .frame(height: 230)
                                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                                .indexViewStyle(.page(backgroundDisplayMode: .always))
                                
                                
                                Spacer()
                                
                                VStack(alignment: .leading,spacing: 0){
                                    VStack(alignment: .leading,spacing: 0){
                                        HStack(alignment: .top,spacing: 0,content: {
                                            
                                            Text("\(advert.price) $")
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
                                                Text("Позвонить")
                                            }
                                            .frame(width: 310, height: 50)
                                            .background(Color.yellow)
                                            .foregroundColor(Color.black)
                                            .cornerRadius(10)
                                            
                                            Spacer()
                                            
                                            threeDotsButton()
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
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading:
                                    Button(
                                        action: {
                                            // Do something to add another empty text field to the view
                                        },
                                        label: {
                                            HStack(alignment: .center,spacing:0) {
                                                
                                                TextField("Address", text: $address)
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 18, weight: .bold))
                                                
                                                    .frame(width:150, alignment: .leading)
                                                
                                                Spacer()
                                                
                                                Image(systemName: "xmark")
                                                    .font(.system(size: 8))
                                                    .foregroundColor(Color.white)
                                            }
                                        }
                                    )
                                        .controlSize(.large)
                                        .background(.gray)
                                        .cornerRadius(20),
                                trailing:Text("Filters"))
        }
    }
}

struct AdvertMain_Previews: PreviewProvider {
    static var previews: some View {
        AdvertMain()
            .previewInterfaceOrientation(.portrait)
    }
}
