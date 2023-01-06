//
//  WordOfTheDayDTO.swift
//  wordaday
//
//  Created by Sabrina Freifeld on 9/22/22.
//
import Foundation

public struct WordOfTheDayAPI: Decodable {
    public let word: String?
    public let definitions: [DefinitionAPI]?
    public let examples: [ExampleAPI]?
    
    public init(
        word: String?,
        definitions: [DefinitionAPI]?,
        examples: [ExampleAPI]?
    ) {
        self.word = word
        self.definitions = definitions
        self.examples = examples
    }
}
