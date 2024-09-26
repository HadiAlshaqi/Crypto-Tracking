//
//  CoinImageView.swift
//  CryptoApp
//
//  Created by Hadi Alshaqi on 6/5/24.
//

import SwiftUI

struct CoinImageView: View {
    
    @StateObject var vm: CoinImageViewModel
    
    init(coin: CoinModel) {
        _vm = StateObject(wrappedValue: CoinImageViewModel(coin: coin))
    }
    
    var body: some View {
        if let image = vm.image {
            Image(uiImage: image)
                .resizable()
                .scaledToFit()
        } else if vm.isLoding {
            ProgressView()
        } else {
            Image(systemName: "questionmark")
                .foregroundStyle(Color.theme.secondaryTextColor)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CoinImageView(coin: DveloperPreview.instance.coin)
        .padding()
}
