//
//  Faker.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 11/09/22.
//

class Faker {
    static var firstNames: [String] = ["Muhammad", "Jahongir", "Jahongir", "Behzod", "Adham", "Alisher"]
    static var lastNames: [String] = ["Tursunboyev", "Yangiboyev", "Rajabov","Mamatqulov"]
    static var address: [String] = ["Тафаккур Улица​","Хозяйственный корпус Ракатбоши ж/м","Хадра (Ц-14) Жилмассив","Кызыл Тамга 2-й проезд Улица","Турткульский 3-й переулок Улица"]
    static var destrict: [String] = ["Ургенч","Ташкент","Андижан","Бухара","Гулистан","Карши","Навои","Наманган","Республика Каракалпакстан","Самарканд","Термез","Фергана"]
    static var region: [String] = ["Хорезмская область","Ферганская область","Республика Каракалпакстан","Андижанская область","    Ташкент","Джизакская область","Кашкадарьинская область","Навоийская область","Республика Каракалпакстан","Наманганская область","Самаркандская область","Сурхандарьинская область","Ташкентская область","Ферганская область"]
    static var lat = [41.292199,41.30144,41.284823,41.290768]
    static var lon = [69.328006,69.22442,69.232185,69.263686]
    static var long = lon
    static var longitude = lon
    static var latitude = lat
    static var image = ["home.out","home2","home3","home4","home5","home6","home7","home8","home.kitchen"]
    static var paragraphs: [String] = ["Lorem ipsum dolor sit ...", "Suspendisse potenti. Donec euismod ..." /* .. */ ]
    static var sentences: [String] = {
        return Faker.paragraphs
            .joined(separator: ". ")
            .components(separatedBy: ". ")
            .map { $0.appending(".") }
    }()
    static var words: [String] = {
        return Faker.sentences
            .joined(separator: ". ")
            .components(separatedBy: " ")
            .filter { ![".", ","].contains($0) }
    }()
    
    func random<T>(_ array: [T]) -> T {
        let index: Int = Int.random(in: 0..<array.count)
        return array[index]
    }
}

extension Faker {
    func string() -> String! {
        return self.random(Self.words)
    }
}
