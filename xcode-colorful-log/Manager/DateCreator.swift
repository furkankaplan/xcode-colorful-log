//
//  DateCreator.swift
//  xcode-colorful-log
//
//  Created by Furkan Kaplan on 8.01.2022.
//

import Foundation

protocol DateCreatorProtocol {
    func createFrom(_ string: String) -> Date
    func createFrom(_ date: Date) -> String
}

class DateCreator: DateCreatorProtocol {
    
    private var dateFormatter: DateFormatter {
        let dateFormatter = DateFormatter()
        
        dateFormatter.locale = Locale(identifier: "en_US_POSIX") // set locale to reliable US_POSIX
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        
        return dateFormatter
    }
    
    func createFrom(_ string: String) -> Date {
        return dateFormatter.date(from:string) ?? Date()
    }
    
    func createFrom(_ date: Date) -> String {
        return dateFormatter.string(from: date)
    }
    
}
