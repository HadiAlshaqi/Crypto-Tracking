//
//  XMarkButton.swift
//  CryptoApp
//
//  Created by Hadi Alshaqi on 6/11/24.
//

import SwiftUI

struct XMarkButton: View {
    
//    @Environment(\.presentationMode) var presentationMode 
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        Button(action: {
//            presentationMode.wrappedValue.dismiss()
            dismiss()
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
                .foregroundStyle(Color.theme.accentColor)
        })
    }
}

#Preview {
    XMarkButton()
}
