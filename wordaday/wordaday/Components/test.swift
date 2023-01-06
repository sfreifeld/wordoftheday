//
//  test.swift
//  wordaday
//
//  Created by Sabrina Freifeld on 12/29/22.
//

import SwiftUI

struct ContentView: View {
   // State variable to store the position of the box
   @State private var boxPosition: CGSize = .zero

   var body: some View {
      VStack {
         Button(action: {
            // Animate the box back to the center of the screen
            withAnimation {
               self.boxPosition = .zero
            }
         }) {
            Text("Reset")
               .font(.headline)
         }
          Button(action: {
             // Animate the box back to the center of the screen
             withAnimation {
                 self.boxPosition = CGSize(width:20, height:20)
             }
          }) {
             Text("Up")
                .font(.headline)
          }

         Spacer()

         // Bind the position of the box to the boxPosition state variable
         BoxView(position: $boxPosition)
            .animation(.spring())
      }
   }
}

struct BoxView: View {
   // Bind the position of the box to a state variable
   @Binding var position: CGSize

   var body: some View {
      Rectangle()
         .frame(width: 100, height: 100)
         .foregroundColor(.blue)
         .offset(position)
   }
}

struct ContentView_Previews: PreviewProvider {
static var previews: some View {
    ZStack {
        GradientBackground()
            VStack {
        ContentView()
        }
    }
    }
}
