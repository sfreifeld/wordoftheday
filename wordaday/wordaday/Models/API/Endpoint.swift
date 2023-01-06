//
//  Endpoint.swift
//  wordaday
//
//  Created by Sabrina Freifeld on 9/14/22.
//

import Foundation

public func getFormattedDate(date: Date = Date()) -> String {
        let dateformat = DateFormatter()
        dateformat.dateFormat = "yyyyMMdd"
        return dateformat.string(from: date)
}


public func endpoint() -> URL {
    let formatDate = getFormattedDate()
    let endpoint = "wordOfTheDay?date=\(formatDate)&api_key=spsyjnwus774vlciyfkr2mx8a34rv5xy771ig1xg22v6robko"
    return .makeForEndpoint(endpoint)
    }


extension URL {
    static func makeForEndpoint(_ endpoint: String) -> URL {
        URL(string: "https://api.wordnik.com/v4/words.json/\(endpoint)")!
    }
}
