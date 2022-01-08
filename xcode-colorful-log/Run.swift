//
//  Run.swift
//  xcode-colorful-log
//
//  Created by Furkan Kaplan on 8.01.2022.
//

import Foundation

protocol RunProtocol {
    func log()
}

class Run: RunProtocol {
    
    private let key: String
    
    init(key: String) {
        self.key = key
    }
    
    func log() {
        let command = Command(key: key, delegate: self)
        command.run()
    }
    
}

extension Run: CommandDelegate {
    
    func command(_ message: String) {
        print(message)
    }
    
}
