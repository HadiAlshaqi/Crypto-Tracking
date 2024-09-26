//
//  StatisticView.swift
//  CryptoApp
//
//  Created by Hadi Alshaqi on 6/8/24.
//

import SwiftUI

struct StatisticView: View {
    
    let stat: StatisticModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(stat.title)
                .font(.caption)
                .foregroundStyle(Color.theme.secondaryTextColor)
            
            Text(stat.value)
                .font(.headline)
                .foregroundStyle(Color.theme.accentColor)
            
            HStack(spacing: 4) {
                Image(systemName: "triangle.fill")
                    .font(.caption2)
                    .rotationEffect(.degrees(stat.percentageChange ?? 0 >= 0 ? 0 : 180))
                    
                Text(stat.percentageChange?.asPercentString() ?? "")
                    .font(.caption)
                    .bold()
            }
            .foregroundStyle((stat.percentageChange ?? 0) >= 0 ? Color.theme.greenColor : Color.theme.redColor
            )
            .opacity(stat.percentageChange == nil ? 0.0 : 1.0)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StatisticView(stat: DveloperPreview.instance.stat1)
        .preferredColorScheme(.dark)
        .padding()
}
#Preview(traits: .sizeThatFitsLayout) {
    StatisticView(stat: DveloperPreview.instance.stat2)
        .padding()
}
#Preview(traits: .sizeThatFitsLayout) {
    StatisticView(stat: DveloperPreview.instance.stat3)
        .preferredColorScheme(.dark)
        .padding()
}
