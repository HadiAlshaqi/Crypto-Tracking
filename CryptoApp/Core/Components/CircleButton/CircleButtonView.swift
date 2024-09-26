//
//  CircleButtonView.swift
//  CryptoApp
//
//  Created by Hadi Alshaqi on 6/1/24.
//

import SwiftUI

struct CircleButtonView: View {
    
    let iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundStyle(Color.theme.accentColor)
            .frame(width: 50, height: 50)
            .background(Color.theme.backgroundColor)
            .clipShape(Circle())
            .shadow(color: Color.theme.accentColor.opacity(0.45),
                    radius: 10, x: 0, y: 0)
            .padding()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CircleButtonView(iconName: "info")
}

#Preview(traits: .sizeThatFitsLayout) {
    CircleButtonView(iconName: "plus")
        .preferredColorScheme(.dark)
}
