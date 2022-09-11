
//  AddressModel.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 11/09/22.
//

import Foundation

struct Addresses:Identifiable {
    let id:String = UUID().uuidString
    let address: String
    let lon:Decimal = 41.299496
    let lat:Decimal = 69.240074
}
