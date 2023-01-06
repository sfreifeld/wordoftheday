//
//  WordAndArrows.swift
//  wordaday
//
//  Created by Sabrina Freifeld on 12/29/22.
//

import SwiftUI

struct WordAndArrows: View {
    @State public var wordPosition: CGSize = .zero
    @State private var showMessage = false
    var body: some View {
        VStack {
           
            if showMessage {
                Text("Come back later to see tomorrow's word!")
                    .font(Font.custom("Quicksand-Bold", size: 30))
                    .foregroundColor(.indigo)
                    .multilineTextAlignment(.center)
                
            } else {
        
            WordCard(viewModel: .init(), position: $wordPosition, message: $showMessage)
                .padding()
            }
            
            HStack {
                Spacer()
                Button {
                    withAnimation {
                    self.wordPosition = CGSize(width: -400,height: 0)
                        showMessage = true }
                } label: {
                    Image(systemName: "arrow.left")
                        .padding(.trailing, 50)
                    Text("Lose it")
                        .font(Font.custom("Quicksand-SemiBold", size: 20))

                    }
                    .buttonStyle(SquishButtonStyle(fadeOnPress: false))
                    .foregroundColor(.white)
                Spacer()
                Button {
                    withAnimation {
                        showMessage = false
                       self.wordPosition = .zero
                    }
                 }
                 label: {
                    Image(systemName: "arrow.counterclockwise")
                        .resizable()
                        .frame(width: 32.0, height: 38)
                        .padding()
                    }
                    .buttonStyle(SquishButtonStyle(fadeOnPress: false))
                    .foregroundColor(.white)
                Spacer()
                Button {
                    withAnimation {
                        self.wordPosition = CGSize(width: 400,height: 0)
                        showMessage = true
                    }
                } label: {
                    Image(systemName: "arrow.right")
                    Text("Learn it")
                        .font(Font.custom("Quicksand-SemiBold", size: 20))
                    }
                    .buttonStyle(SquishButtonStyle(fadeOnPress: false))
                    .foregroundColor(.white)
                Spacer()
            }
        }
    }
}

struct WordAndArrows_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
        GradientBackground()
            WordAndArrows(wordPosition:.zero)
        }
    }
}
