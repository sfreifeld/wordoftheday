//
//  SquishButtonStyle.swift
//  wordaday
//
//  Created by Sabrina Freifeld on 10/3/22.
//
import SwiftUI

struct SquishButtonStyle: ButtonStyle {
    var fadeOnPress = true

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .opacity(configuration.isPressed && fadeOnPress ? 0.75 : 1)
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
    }
}

extension ButtonStyle where Self == SquishButtonStyle {
    static var squish: SquishButtonStyle {
        SquishButtonStyle()
    }
    
    static func squish(fadeOnPress: Bool = true) -> SquishButtonStyle {
        SquishButtonStyle(fadeOnPress: fadeOnPress)
    }
}
