//
//  Painter.swift
//  xcode-colorful-log
//
//  Created by Furkan Kaplan on 9.01.2022.
//

import Foundation

protocol PainterProtocol {
    func printLog()
}

class Painter: PainterProtocol {
    
    private let log: LogEntry
    private let dateCreater: DateCreatorProtocol = DateCreator()
    
    init(log: LogEntry) {
        self.log = log
    }
    
    func printLog() {
        let color:  ANSIColors
        
        switch log.type {
        case .`default`: color = .white
        case .error: color = .red
        case .fault: color = .magenta
        case .info: color = .cyan
        }
        
        // self.log.message.with(color: color)
        var message: String = ""
        
        message.append("[")
        message.append(dateCreater.createFrom(log.date))
        message.append("]")
    
        message.append(log.message)
        
        print(message.with(color: color))
    }
    
}
