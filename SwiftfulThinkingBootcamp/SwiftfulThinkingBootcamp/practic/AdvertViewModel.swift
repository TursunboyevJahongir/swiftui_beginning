//
//  AdvertViewModel.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 12/09/22.
//

import Foundation

class AdvertViewModel: ObservableObject {
    
    @Published var advertsList: [AdvertModel] = []
    @Published var isLoading: Bool = false
    
    init(){
        getAdverts()
    }
    
    func getAdverts(){
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            for _ in 0 ..< 50{
                self.advertsList.append(AdvertModel())
            }
            self.isLoading = false
        }
    }
}
