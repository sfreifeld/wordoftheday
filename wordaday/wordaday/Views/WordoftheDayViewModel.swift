//
//  WordoftheDayViewModel.swift
//  wordaday
//
//  Created by Sabrina Freifeld on 12/26/22.
//

import Foundation
import AVFoundation
import SwiftUI


class WordOfTheDayViewModel: ObservableObject {

    
    
    @Published var word = ""
    @Published var wordDescription = ""
    @Published var wordPartofSpeech = ""
    @Published var wordExample = ""
    
    func fetchData(){
        print("WordOfTheDayViewModel: fetchData")
        
        API.getWordOfTheDay() { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let wordOfTheDayResponse):
                
                self.word = wordOfTheDayResponse.word ?? ""
                self.wordDescription = wordOfTheDayResponse.definitions?.first?.text ?? ""
                self.wordPartofSpeech = wordOfTheDayResponse.definitions?.first?.partOfSpeech ?? ""
                self.wordExample = wordOfTheDayResponse.examples?.first?.text ?? ""
                
                
            case .failure:
                break
            }
            
        }
    }
}

