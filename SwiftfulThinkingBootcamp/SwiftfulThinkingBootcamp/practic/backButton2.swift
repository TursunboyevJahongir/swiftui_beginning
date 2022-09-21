//
//  BackButton.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 21/09/22.
//

import SwiftUI

struct backButton2: View {
    @Environment(\.presentationMode) var presentationMode
    let image = "chevron.backward"
    let text:String? = nil
    
    var body: some View {
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            VStack {
                Image(systemName:image)
                    .foregroundColor(Color.black)
                    .font(.system(size: 16, weight: .bold))
                    .padding(.trailing,10)
                
                if(text != nil){
                    Text(text!)
                }
            }
        }
    }
}
