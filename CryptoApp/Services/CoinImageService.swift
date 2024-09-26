//
//  CoinImageService.swift
//  CryptoApp
//
//  Created by Hadi Alshaqi on 6/5/24.
//

import Foundation
import SwiftUI
import Combine

class CoinImageService {
    
    @Published var image: UIImage? = nil
    
    private var imageSubscription: AnyCancellable?
    
    private let coin: CoinModel
    private let fileManger = LocalFileManager.instance
    private let folderName = "coin_images"
    private let imageName: String
    
    init(coin: CoinModel) {
        self.coin = coin
        self.imageName = coin.id
        getCoinImage()
    }
    
    private func getCoinImage() {
        if let savedImage = fileManger.getImage(imageName: imageName, folderName: folderName) {
            image = savedImage
            print("Retrieved image from File Manager!") // he delete this line
        } else {
            dawonloadCoinImage()
            print("Dawonloading image now") // he delete this line
        }
    }
    
    private func dawonloadCoinImage() {
        guard let url = URL(string: coin.image) else { return }
        
        imageSubscription = NetworkingManager.download(url: url)
            .tryMap({ data -> UIImage? in
                return UIImage(data: data)
            })
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] returnImage in
                guard let self = self, let downloadImage = returnImage else { return }
                self.image = downloadImage
                self.imageSubscription?.cancel()
                self.fileManger.saveImage(image: downloadImage, imageName: self.imageName, folderName: self.folderName)
            })
    }
}
