//
//  Runner.swift
//  xcode-colorful-log
//
//  Created by Furkan Kaplan on 8.01.2022.
//

import Foundation

protocol Running {
    func log()
}

class Runner: Running {
    
    private let injector: DependencyInjector
    
    init(injector: DependencyInjector) {
        self.injector = injector
    }
    
    func log() {
        var command: Commanding = self.injector.command()
        command.delegate = self
        command.run()
    }
    
}

extension Runner: CommanderDelegate {
    
    func command(_ message: String) {
        let parser: Parsing = self.injector.parser(message)
        parser.checkIfMultiline()
        parser.parse()
    }
    
}

extension Runner: ParserDelegate {
    
    func parse(received log: LogEntry) {
        let painter: Painting = self.injector.painter(log)
        painter.printLog()
    }
    
}
