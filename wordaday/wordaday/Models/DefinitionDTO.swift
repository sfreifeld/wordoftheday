//
//  WordOfTheDayContainer.swift
//  wordaday
//
//  Created by Sabrina Freifeld on 9/14/22.
//

public struct DefinitionAPI: Decodable {
    
    public let text: String
    public let partOfSpeech: String?

    
    public init(
        text: String,
        partOfSpeech: String?

    ) {
        self.text = text
        self.partOfSpeech = partOfSpeech
    }
}
