//
//  LibraryButton.swift
//  wordaday
//
//  Created by Sabrina Freifeld on 10/3/22.
//

import SwiftUI

struct LibraryButton: View {
    var action: () -> Void

    var body: some View {
        Button("Check out my library") {
    
            
        }
        .padding()
        .background(Color("Lime"))
        .clipShape(Capsule())
        .buttonStyle(SquishButtonStyle(fadeOnPress: false))
        .font(Font.custom("Quicksand-Bold", size: 15))
        .foregroundColor(Color("Indigo"))
        .shadow(color: .gray, radius: 2.5, x: 0, y: 5)
}
}



struct LibraryButton_Previews: PreviewProvider {
    static var previews: some View {
        LibraryButton(action: {})
    }
}
