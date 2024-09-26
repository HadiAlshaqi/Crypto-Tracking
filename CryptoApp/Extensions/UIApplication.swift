//
//  UIApplication.swift
//  CryptoApp
//
//  Created by Hadi Alshaqi on 6/8/24.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

