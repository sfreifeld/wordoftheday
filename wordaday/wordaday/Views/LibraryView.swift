//
//  LibraryView.swift
//  wordaday
//
//  Created by Sabrina Freifeld on 12/27/22.
//

import SwiftUI

struct WordListView: View {
   // An array of items to display in the list
   let words =  ["word1", "word2", "word3"]

    

   var body: some View {
       ZStack {
       GradientBackground()
        List(words, id:\.self) { words in
         Button(action: {

         }) {
            HStack {
               // Display the item's name and description
               Text(words)
            }
         }
      } .background(Color.yellow)
    }
   }
}




struct WordListView_Previews: PreviewProvider {
   static var previews: some View {
         WordListView()
      }
   }


