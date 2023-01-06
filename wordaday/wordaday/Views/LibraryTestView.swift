//
//  LibraryTestView.swift
//  wordaday
//
//  Created by Sabrina Freifeld on 12/30/22.
//

import SwiftUI

struct WordRow: View {
    var listOfWords = ["gargantuan","kerfluffle", "katzenjammer"]
    
    var body: some View {

        
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [Color("Lilac"), Color("LightPink")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                HStack {
            Text("My Words")
                    .font(Font.custom("Quicksand-Bold", size: 45))
                    .foregroundColor(Color("Indigo"))
                    .multilineTextAlignment(.leading)
            Spacer()
            Image(systemName: "house")
                    .foregroundColor(Color("Indigo"))
                    .font(.system(size: 45, weight: .bold))
            
                }
                .padding(20)
                ScrollView {
            ForEach(listOfWords, id:\.self) { word in
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(
                            Color(.white)
                                .opacity(0.3)
                        )
                
                        .frame(width: 350, height: 70, alignment: .center)
                    HStack {
                Text(word)
                        .padding( .leading, 22)
                        .font(Font.custom("Quicksand-SemiBold", size: 25))
                        .foregroundColor(Color("Indigo"))
                        .multilineTextAlignment(.leading)
                Spacer()
                Image(systemName: "xmark.app")
                            .padding(.trailing,40)
                            .foregroundColor(Color("Indigo"))
                    }
                }
            
            }
            }
        }
            
            }
        }
    }

}


struct LibraryTestView_Previews: PreviewProvider {
    static var previews: some View {
        WordRow()
    }
}
