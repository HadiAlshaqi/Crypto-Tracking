//
//  CoinLogoView.swift
//  CryptoApp
//
//  Created by Hadi Alshaqi on 6/11/24.
//

import SwiftUI

struct CoinLogoView: View {
    let coin: CoinModel
    
    var body: some View {
        VStack {
            CoinImageView(coin: coin)
                .frame(width: 50, height: 50)
            HStack {
                Text(coin.symbol.uppercased())
                    .font(.headline)
                    .foregroundStyle(Color.theme.accentColor)
                    .lineLimit(1)
                .minimumScaleFactor(0.5)
                
                Image(systemName: "triangle.fill")
                    .font(.caption2)
                    .rotationEffect(.degrees(coin.marketCapChangePercentage24H ?? 0 >= 0 ? 0 : 180))
                    .foregroundStyle(
                        (coin.marketCapChangePercentage24H ?? 0) > 0 ? Color.theme.greenColor : Color.theme.redColor
                            .opacity(coin.marketCapChangePercentage24H == nil ? 0.0 : 1.0)
                    )
            }
           
            Text(coin.name.uppercased())
                .font(.caption)
                .foregroundStyle(Color.theme.secondaryTextColor)
                .lineLimit(2)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CoinLogoView(coin: DveloperPreview.instance.coin)
}
#Preview(traits: .sizeThatFitsLayout) {
    CoinLogoView(coin: DveloperPreview.instance.coin)
        .preferredColorScheme(.dark)
}
