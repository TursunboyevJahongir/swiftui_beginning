//
//  Fake.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 11/09/22.
//

class Mock {
    static var lastNames: [String] = ["Smith", "Jones", "Brown" /* .. */ ]
    static var names: [String] = ["James", "John", "Robert", "Michael" /* .. */ ]
    static var paragraphs: [String] = ["Lorem ipsum dolor sit ...", "Suspendisse potenti. Donec euismod ..." /* .. */ ]
    static var sentences: [String] = {
        return Mock.paragraphs
            .joined(separator: ". ")
            .components(separatedBy: ". ")
            .map { $0.appending(".") }
    }()
    static var words: [String] = {
        return Mock.sentences
            .joined(separator: ". ")
            .components(separatedBy: " ")
            .filter { ![".", ","].contains($0) }
    }()
    
    func random<T>(_ array: [T]) -> T {
        let index: Int = Int.random(in: 0..<array.count)
        return array[index]
    }
}
