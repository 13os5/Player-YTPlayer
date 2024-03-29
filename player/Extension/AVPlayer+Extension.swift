//
//  AVPlayer+Extension.swift
//  player
//
//  Created by Warakorn T on 27/3/2567 BE.
//

import Foundation
import AVKit

extension AVPlayer {
    var isPlaying: Bool {
        return rate != 0 && error == nil
    }
}
