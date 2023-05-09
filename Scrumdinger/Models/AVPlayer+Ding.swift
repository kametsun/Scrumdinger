//
//  AVPlayer+Ding.swift
//  Scrumdinger
//
//  Created by 亀窪翼 on 2023/05/09.
//

import Foundation

import Foundation
import AVFoundation

extension AVPlayer {
    static let sharedDingPlayer: AVPlayer = {
        guard let url = Bundle.main.url(forResource: "ding", withExtension: "wav") else { fatalError("Failed to find sound file.") }
        return AVPlayer(url: url)
    }()
}
