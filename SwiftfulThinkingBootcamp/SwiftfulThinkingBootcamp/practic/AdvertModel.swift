//
//  AdvertModel.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 11/09/22.
//

import Foundation

public let imagesArray:[String] = ["home.out","home2","home3","home4","home5","home6","home7","home8","home.kitchen"]
private var addressArray: [String] = ["Тафаккур Улица​","Хозяйственный корпус Ракатбоши ж/м","Хадра (Ц-14) Жилмассив","Кызыл Тамга 2-й проезд Улица","Турткульский 3-й переулок Улица"]

struct AdvertModel:Identifiable {
    let id:String = UUID().uuidString
    let firstName:String = "Jahongir"
    let lastName:String = "Tursunboyev"
    let fullName:String = "Tursunboyev Jahongir"
    let images: [String] = imagesArray.shuffled()
    let price: Int = Int.random(in: 50000..<150000)
    let room: Int = Int.random(in: 1..<5)
    let nierMetro: String? = "Tinchlik"
    let toMetro:String? = "10 Мин"
    let nier:String? = "Школа-150 20 Мин,парк Бабура"
    let size: String = "\(Int.random(in: 25..<40)).\(Int.random(in: 5..<40)) m²"
    let floor: String = Bool.random() ? "этаж \(Int.random(in: 1..<7))/\(Int.random(in: 10..<15))":"Участка"
    let address:Addresses = Addresses(address:addressArray.shuffled()[0])
    let isFavorite = Bool.random()
}
