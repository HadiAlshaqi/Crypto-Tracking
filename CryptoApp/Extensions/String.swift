//
//  String.swift
//  CryptoApp
//
//  Created by Hadi Alshaqi on 8/9/24.
//

import Foundation

extension String {
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression,range: nil)
    }
}
