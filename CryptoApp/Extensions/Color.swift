//
//  Color.swift
//  CryptoApp
//
//  Created by Hadi Alshaqi on 5/31/24.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = Colortheme()
    static let launch = LaunchTheme()
}

struct Colortheme {
    let accentColor = Color("AccentColors")
    let backgroundColor = Color("BackgroundColors")
    let greenColor = Color("GreenColors")
    let redColor = Color("RedColors")
    let secondaryTextColor = Color("SecondaryTextColors")
}

struct LaunchTheme {
    let accentColor = Color("LunchAccentColor")
    let backgroundColor = Color("LunchBackgroundColor")
}
