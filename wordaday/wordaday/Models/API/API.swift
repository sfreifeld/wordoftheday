//
//  API.swift
//  wordaday
//
//  Created by Sabrina Freifeld on 9/14/22.
//

import Alamofire
import Foundation

public struct API {
    public static func getWordOfTheDay(completion: @escaping(_ result: Result<WordOfTheDayAPI, Error>) -> Void) {
        
        let endpoint = endpoint()
        
        AF.request(endpoint)
            .responseDecodable(of: WordOfTheDayAPI.self) { response in
                guard let wordOfTheDay = response.value else {
                    print("Failure! \(endpoint) - \(String(describing: response.error))")
                    return completion(.failure(ServiceError.serverError))
                }
                
                print("Success! \(endpoint)")
                completion(.success(wordOfTheDay))
            }
    }
}

public enum ServiceError: Error {
    case badURL
    case serverError
}
