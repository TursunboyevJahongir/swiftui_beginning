//
//  DocumentationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 01/10/22.
//

import SwiftUI

struct DocumentationBootcamp: View {
    // MARK: PROPERTIES
    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]
    @State var showAlert: Bool = false
    // MARK: BODY
    
    // NICK -Working copy things to do:
    /*
     
     1) Fix title
     2) Fix alert
     
     
     
     */
    
    var body: some View {
        NavigationView {
            
            // TODO: first todo
            // FIXME: fix Bug !
            ZStack {
                Color.red.ignoresSafeArea()
                // TODO: second todo
                foregroundLayer
                    .navigationTitle("Documentation")
                    .navigationBarItems(trailing:
                                            Button("ALERT", action: {
                        showAlert.toggle()
                    })
                    )
                    .alert(isPresented: $showAlert, content: {
                        getAlert(text: "This is the alert!")
                    })
            }
        }
    }
    // MARK: FUNCTIONS
    
    /// This is the foreground layer that holds a scrollView.
    private var foregroundLayer: some View {
        ScrollView { // START: SCROLLV
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        }// END: SCROLLV
    }
    
    // MARK: getAlert
    /// `Gets an alert` with a specified title.
    ///
    /// This function creates and returns an alert *immediately*. The alert will have a title based on the text parameter but it will **NOT have** a message.
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    /// ```
    ///
    /// - Warning: There is no additional message in this `Alert`.
    /// - Parameter text: This is the title for the **alert**.
    /// - Returns: Returns an alert with a title.
    /// - Throws: `MyError.invalidRecipient
    ///  `if `recipient` is "Derek"
    ///  (he knows what he did).
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
    
    /// Returns the magnitude of a vector in three dimensions
    /// from the given components.
    ///
    /// - Parameters:
    ///     - x: The *x* component of the vector.
    ///     - y: The *y* component of the vector.
    ///     - z: The *z* component of the vector.
    func magnitude3D(x: Double, y: Double, z: Double) -> Double {
        return sqrt(pow(x, 2) + pow(y, 2) + pow(z, 2))
    }
}

// MARK: PREVIEW
struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
