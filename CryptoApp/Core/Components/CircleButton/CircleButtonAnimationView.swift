//
//  CircleButtonAnimationView.swift
//  CryptoApp
//
//  Created by Hadi Alshaqi on 6/1/24.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    
    @Binding var animate: Bool
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 5.0)
                .scale(animate ? 1.0 : 0.0)
                .opacity(animate ? 0.0 : 1.0)
                .foregroundStyle(Color.theme.redColor)
            .animation(animate ? Animation.easeInOut(duration: 1.0) : .none , value: UUID())
            
            Circle()
                .stroke(lineWidth: 5.0)
                .scale(animate ? 1.25 : 0.0)
                .opacity(animate ? 0.0 : 1.25)
            .animation(animate ? Animation.easeInOut(duration: 1.0) : .none , value: UUID())
        }
    }
}

#Preview {
    CircleButtonAnimationView(animate: .constant(false))
        .foregroundStyle(Color.red)
        .frame(width: 100, height: 100)
}
