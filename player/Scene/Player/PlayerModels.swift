//
//  PlayerModels.swift
//  player
//
//  Created by Warakorn T on 26/3/2567 BE.
//  Copyright (c) 2567 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit
import CoreMedia

enum Player {
    // MARK: Use cases
    
    enum Something {
        struct Request {
        }
        
        struct Response {
        }
        
        struct ViewModel {
        }
    }
    
    enum SetUpPlayer {
        struct Request {
            var url: URL
        }
        
        struct Response {
            var url: URL
            var isAutoPlay: Bool
        }
        
        struct ViewModel {
            var url: URL
            var isAutoPlay: Bool
        }
    }
    
    enum PlayPauseButtonTapped {
        struct Request {
            var isPlay: Bool
        }
        
        struct Response {
            var isPlay: Bool
        }
        
        struct ViewModel {
            var isPlay: Bool
            var playPauseImage: UIImage
        }
    }
    
    enum SeekBarButtonTapped {
        struct Request {
            var sliderValue: Float
        }
        
        struct Response {
            var sliderValue: Float
        }
        
        struct ViewModel {
            var seekToTime: CMTime
        }
    }
}
