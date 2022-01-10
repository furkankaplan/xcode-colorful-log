//
//  main.swift
//  xcode-colorful-log
//
//  Created by Furkan Kaplan on 8.01.2022.
//

import Foundation

let result: Running = Runner(injector: DependencyContainer(key: "Crypto.ContactsApp1:ContactsApp"))
result.log()
