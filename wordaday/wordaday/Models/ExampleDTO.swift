//
//  ExampleDTO.swift
//  wordaday
//
//  Created by Sabrina Freifeld on 11/13/22.
//

public struct ExampleAPI: Decodable {
    
    public let text: String

    
    public init(
        text: String

    ) {
        self.text = text
    }
}
