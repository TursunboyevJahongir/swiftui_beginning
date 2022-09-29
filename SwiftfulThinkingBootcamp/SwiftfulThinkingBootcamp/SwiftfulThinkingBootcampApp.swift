//
//  SwiftfulThinkingBootcampApp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 22/05/22.
//

import SwiftUI

/*

 MVVM Architecture
 
 Model - data point
 View - UI
 ViewMpdel - manages Models for View

 */

@main
struct SwiftfulThinkingBootcampApp: App {
    
    @StateObject var listModelView: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listModelView)
        }
    }
}
