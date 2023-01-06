//
//  GradientBackground.swift
//  wordaday
//
//  Created by Sabrina Freifeld on 10/3/22.
//

import SwiftUI

struct GradientBackground: View {
    var body: some View {
        Rectangle()
            .fill(
                LinearGradient(gradient: Gradient(colors: [Color("Lilac"), Color("LightPink")]), startPoint: .top, endPoint: .bottom)
            )
            .ignoresSafeArea()
    }
}

struct GradientBackground_Previews: PreviewProvider {
    static var previews: some View {
        GradientBackground()
    }
}
