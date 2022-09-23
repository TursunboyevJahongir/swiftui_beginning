//
//  ShowAdvertView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 18/09/22.
//

import SwiftUI


struct ShowAdvertView: View {
    
    @State var advert:AdvertModel = AdvertModel()
    @State var selectionImage:Int = 1
    @State var imageFull: Bool = false
    @Environment(\.presentationMode) var presentationMode
    
    
    
    let infoGreed:[GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        NavigationView{
            ZStack (alignment: .bottom) {
                ScrollView{
                    VStack(alignment: .leading, spacing: 0){
                        Button {
                            imageFull.toggle()
                        } label: {
                            TabView(selection: $selectionImage,content: {
                                ForEach(Array(advert.images.enumerated()), id: \.element) { index, img in
                                    Image(img)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .scaledToFill()
                                        .tag(index+1)//todo index+1 deyish to'g'rimi ?
    //                                    .frame(height:350)//todo kerkmi kerkmasmi ?
                                }
                            })
                            .frame(height: 350)
                            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                            .indexViewStyle(.page(backgroundDisplayMode: .always))
                            .overlay(
                                VStack(alignment:.trailing) {
                                    HStack{
                                        Button {
                                            presentationMode.wrappedValue.dismiss()
                                        } label: {
                                            Image(systemName:"chevron.backward")
                                                .foregroundColor(Color.white)
                                                .font(.system(size: 20, weight: .bold))
                                                .padding(20)
                                        }.padding(.horizontal)
                                        
                                        Spacer()
                                        
                                        HStack(alignment: .bottom, spacing: 0) {
                                            favouriteButton(favourite: advert.isFavorite)
                                                .foregroundColor(.white)
                                            
                                            threeDotsButton()
                                                .font(.system(size: 45))
                                                .foregroundColor(.white)
                                        }
                                        .padding(.trailing)
                                    }
                                    Spacer()
                                    Text("\(selectionImage) from \(advert.images.count)")
                                        .font(.system(size: 15,weight: .heavy))
                                        .padding(6)
                                        .foregroundColor(.white)
                                        .background(Color.black)
                                        .opacity(0.8)
                                        .cornerRadius(10.0)
                                        .padding(6)
                                }.padding(.top))
                        }
                        .buttonStyle(.plain)
                        .fullScreenCover(isPresented: $imageFull) {
                            ImageFull(selectionImage: $selectionImage, advert: advert)
                        }
                        Spacer()
                        
                        VStack{
                            VStack(alignment: .leading,spacing: 8){
                                HStack(alignment: .bottom,spacing: 30,content: {
                                    Text("\(advert.price) $")
                                        .font(.system(size: 30, weight: .bold))
                                    Text(advert.size)
                                        .font(.system(size: 20))
                                    
                                    Text(advert.floor)
                                        .font(.system(size: 20))
                                }).padding(.leading)
                                
                                LazyVGrid(columns: infoGreed,
                                          alignment: .leading,
                                          spacing: nil,
                                          pinnedViews: []) {
                                    VStack {
                                        Text("\(advert.room) комн")
                                            .font(.system(size: 20, weight: .bold))
                                        Text("Kvartira")
                                    }
                                    
                                    VStack {
                                        Text("\(advert.room) комн")
                                            .font(.system(size: 20, weight: .bold))
                                        Text("obshaya")
                                    }
                                    VStack {
                                        Text("\(advert.room) комн")
                                            .font(.system(size: 20, weight: .bold))
                                        Text("kuxnya")
                                    }
                                }.padding(.leading)
                                
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
                                }.padding(.leading)
                            }
                            
                        }
                    }
                }.edgesIgnoringSafeArea(.top)
                
                Spacer()
                
                
                Button {
                } label: {
                    Text("Позвонить")
                        .foregroundColor(Color.black)
                }
                .padding()
                .padding(.horizontal,110)
                .background(.yellow)
                .cornerRadius(9)
                .padding(3)
                .background(.gray)
                .cornerRadius(9)
            }
            
            .navigationBarHidden(true)
        }
//        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct ImageFull: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var selectionImage: Int
    @State var advert:AdvertModel
    
    var body: some View{
        NavigationView{
            ZStack(alignment: Alignment.center){
                Color.black
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Spacer()
                    
                    TabView(selection:$selectionImage,content: {
                        ForEach(Array(advert.images.enumerated()), id: \.element) { index, img in
                            Image(img)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaledToFill()
                                .frame(width: 385,height: 330)
                                .tag(index+1)
                        }
                    })
                    .frame(height: 330)
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                    .indexViewStyle(.page(backgroundDisplayMode: .always))
                    
                    Spacer()
                    
                    Button {
                    } label: {
                        Text("Позвонить")
                    }
                    .frame(width: 380, height: 70)
                    .background(Color.yellow)
                    .foregroundColor(Color.black)
                    .cornerRadius(10)
                }
            }
            .navigationBarItems(leading:
                                    Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName:"xmark")
                    .foregroundColor(Color.white)
                    .font(.system(size: 16, weight: .bold))
                    .padding(20)
            },trailing: favouriteButton(favourite: advert.isFavorite).foregroundColor(.white))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("\(advert.price) $")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .bold))
                        Spacer()
                        Text("\(advert.room) комн, \(advert.size), \(advert.floor)")
                            .foregroundColor(.white)
                            .font(.subheadline)
                    }
                }
            }
        }
    }
}

struct ShowAdvertView_Previews: PreviewProvider {
    static var previews: some View {
        ShowAdvertView()
    }
}
