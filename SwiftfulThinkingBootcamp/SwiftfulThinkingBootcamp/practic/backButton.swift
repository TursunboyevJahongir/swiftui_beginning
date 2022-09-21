//
//  backButton.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 21/09/22.
//

import SwiftUI

struct backButton: View {
    @Environment(\.presentationMode) var presentationMode
    let image = "chevron.backward"
    let text:String? = nil
    var size:Int = 16
    var color:Color = Color.black
    
    var body: some View {
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            VStack {
                Image(systemName:image)
                    .foregroundColor(color)
                    .font(.system(size: CGFloat(size), weight: .bold))
                    .padding(.trailing,10)
                
                if(text != nil){
                    Text(text!)
                }
            }
            
        }
    }
}
