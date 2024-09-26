//
//  SettingsView.swift
//  CryptoApp
//
//  Created by Hadi Alshaqi on 8/10/24.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    let defaultURL = URL(string: "https://www.google.com")!
    let linkedInURL = URL(string: "https://www.linkedin.com/feed/")!
    let faceBookURL = URL(string: "https://www.facebook.com/hadi.alchaki")!
    let xAppURL = URL(string: "https://x.com/HadiAlshaki")!
    let personalURL = URL(string: "https://www.linkedin.com/feed/")!
    let coinGeckoURL = URL(string: "https://www.coingecko.com")!
    
    var body: some View {
        NavigationView {
            List {
                infoSection
                coinGeckoSection
                developerSection
                applicationSection
            }
            .listStyle(.grouped)
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                            .font(.headline)
                            .foregroundStyle(Color.theme.accentColor)
                    })
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}

extension SettingsView {
    private var infoSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was made by Orca companey. It uses MVVM Architecture, Combine, and CoreData!")
                    .foregroundStyle(Color.theme.accentColor)
            }
            .padding(.vertical)
            Link("Touch with us 🥳", destination: linkedInURL)
            Link("If you have any advice 🤔", destination: linkedInURL)
        } header: {
            Text("Crypto App")
        }
    }
    
    private var coinGeckoSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This cryptocurrency data that is used in this app comes from a free API from CoinGecko! Prices may be slightly delayed.")
                    .foregroundStyle(Color.theme.accentColor)
            }
            .padding(.vertical)
            Link("Visit CoinGecko 🦎", destination: coinGeckoURL)
        } header: {
            Text("coingecko")
        }
    }
    
    private var developerSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("developer")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was developed by Hadi Alshaqi. It uses SwiftUI and is written 100% in swift. The project benefits from multi-threading, publishers/subscribers, and data persistance.")
                    .foregroundStyle(Color.theme.accentColor)
            }
            .padding(.vertical)
            Link("Visit Website 👨🏻‍💻", destination: linkedInURL)
        } header: {
            Text("Developer")
        }
    }
    
    private var applicationSection: some View {
        Section {
            Link("Terms of Service", destination: linkedInURL)
            Link("Privacy Policy", destination: linkedInURL)
            Link("Company Website", destination: linkedInURL)
            Link("Learn More", destination: linkedInURL)
        } header: {
            Text("Application")
        }
    }
}
