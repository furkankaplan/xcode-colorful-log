//
//  Command.swift
//  xcode-colorful-log
//
//  Created by Furkan Kaplan on 8.01.2022.
//

import Foundation

protocol CommandProtocol {
    func run()
}

protocol CommandDelegate: AnyObject {
    func command(_ message: String, filterKey: String)
}

class Command: CommandProtocol {
    
    private let process = Process()
    private let pipe = Pipe()
    private let launchPath = "/usr/bin/env"
    private let arguments: [String] = ["bash", "-c"]
    private let command: String = "log stream --info"
    
    private var handler: FileHandle!
    private var key: String!
    
    private weak var delegate: CommandDelegate!
    
    private init() { /* Not Allowed */ }
    
    init(key: String, delegate: CommandDelegate) {
        self.key = key
        
        self.process.launchPath = self.launchPath
        self.process.arguments = self.arguments + [command]
        self.process.standardOutput = pipe
        
        self.handler = pipe.fileHandleForReading
        
        self.delegate = delegate
    }
    
    func run() {
        handler.readabilityHandler = { [weak self] pipe in
            guard let self = self else { return }
            guard let line = String(data: pipe.availableData, encoding: .utf8) else { return }
            guard line.contains(self.key) else { return }
            
            self.delegate?.command(line, filterKey: self.key)
        }
        
        process.launch()
        process.waitUntilExit()
    }
    
}
