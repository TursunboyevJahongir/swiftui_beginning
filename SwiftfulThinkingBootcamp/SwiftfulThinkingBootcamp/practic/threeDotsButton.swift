//
//  threeDotsButton.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 20/09/22.
//

import SwiftUI

struct threeDotsButton: View {
    @State private var showingOptions = false
    
    var body: some View {
        Button("...") {
            showingOptions = true
        }
        .confirmationDialog("uz", isPresented: $showingOptions, actions: {
            Button("Написать заметку") {
                // action
            }
            
            Button("Копировать ссылку") {
                // action
            }
            
            Button("Поделиться") {
                // action
            }
            
            Button("Пожаловаться") {
                // action
            }
        })
//        .confirmationDialog("Select a color", isPresented: $showingOptions, titleVisibility: .visible) {
//
//        }
        .frame(width: 40, height: 50)
    }
}
