//
//  WordOfTheDayHome.swift
//  wordaday
//
//  Created by Sabrina Freifeld on 10/3/22.
//

import SwiftUI






struct WordOfTheDayHome: View {
    @State public var wordPosition: CGSize = .zero
    var body: some View {
        ZStack {
            GradientBackground()
            VStack {
                Spacer()
                WeeklyCalendar()
                Color.white.frame(width: 335, height: 1 / UIScreen.main.scale)
                Spacer()
                WordAndArrows()
                //Spacer()
                LibraryButton(action: {})
                Spacer()
                }



            }
        }
    }

struct WordOfTheDayHome_Previews: PreviewProvider {
    static var previews: some View {
        WordOfTheDayHome()
    }
}
