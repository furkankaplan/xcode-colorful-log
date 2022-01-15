//
//  StringExtension.swift
//  xcode-colorful-log
//
//  Created by Furkan Kaplan on 13.01.2022.
//

import Foundation

/// Logs collected by the system is not completely in the regular format. It's not line by line all the time.
/// Because of that, encoding is required to parse logs correctly.
extension String {
    
    var newLineEscaping: String { self.replacingOccurrences(of: "\n", with: "@new-line@") }
    
}
