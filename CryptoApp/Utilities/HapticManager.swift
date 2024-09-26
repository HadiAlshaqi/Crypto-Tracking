//
//  HapticManager.swift
//  CryptoApp
//
//  Created by Hadi Alshaqi on 6/13/24.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generatorn = UINotificationFeedbackGenerator()
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generatorn.notificationOccurred(type)
    }
}
