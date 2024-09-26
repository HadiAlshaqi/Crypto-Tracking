//
//  SearchBarView.swift
//  CryptoApp
//
//  Created by Hadi Alshaqi on 6/8/24.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var seachText: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundStyle(
                    seachText.isEmpty ?
                    Color.theme.secondaryTextColor : Color.theme.accentColor
                )
                
            TextField("Search by name or symbol...", text: $seachText)
                .foregroundStyle(Color.theme.accentColor)
                .keyboardType(.asciiCapable)
                .autocorrectionDisabled(true)
                .overlay(alignment: .trailing) {
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .offset(x: 10.0)
                        .foregroundStyle(Color.theme.accentColor)
                        .opacity(seachText.isEmpty ? 0.0 : 1.0)
                        .animation(.spring, value: seachText)
                        .onTapGesture {
                            UIApplication.shared.endEditing()
                            seachText = ""
                        }
                }
        }
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.theme.backgroundColor)
                .shadow(color: Color.theme.accentColor.opacity(0.15),
                        radius: 10)
        )
        .padding()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    SearchBarView(seachText: .constant(""))
        .preferredColorScheme(.light)
}
#Preview(traits: .sizeThatFitsLayout) {
    SearchBarView(seachText: .constant(""))
        .preferredColorScheme(.dark)
}
