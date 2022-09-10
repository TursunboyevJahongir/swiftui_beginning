//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 10/09/22.
//

import SwiftUI

struct SheetsBootcamp: View {
    @State var showSheet: Bool = false
    var body: some View {
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.all)
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(20))
            }
            //            .fullScreenCover(isPresented: $showSheet) {
            //                SecondScreen()
            //            }
            .sheet(isPresented: $showSheet) {
                // DO NOT ADD CONDITIONAL LOGIC
                //                Text("HELLO THERE!!!!")
                SecondScreen()
            }
        }
    }
}

struct SecondScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View{
        ZStack(alignment: Alignment.topLeading){
            Color.red
                .edgesIgnoringSafeArea(.all)
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName:"xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
        //        SecondScreen()
    }
}
