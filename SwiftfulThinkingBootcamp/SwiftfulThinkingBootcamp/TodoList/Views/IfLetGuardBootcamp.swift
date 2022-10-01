//
//  IfLetGuardBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 30/09/22.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var displayText: String? = nil
    @State var currentUserId: String? = "jkk"
    @State var isLoading = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding!")
                
                if let text = displayText {
                    Text (text)
                        .font(.title)
                }
                
                // DO NOT USER ! EVER !!!!!!
                // DO NOT FORCE UNWRAP VALUES
                //                Text (displayText!)
                //                    .font(.title)
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
            }
        }
    }
    
    func loadData() {
        if let userID = currentUserId {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User id is: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Eror. There is no User ID!"
        }
    }
    
    func loadData2() {
        guard let userID = currentUserId else {
            displayText = "Eror. There is no User ID!"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User id is: \(userID)"
            isLoading = false
        }
        
    }
}

struct IfLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp()
    }
}
