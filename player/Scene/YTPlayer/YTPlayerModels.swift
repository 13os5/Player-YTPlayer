//
//  YTPlayerModels.swift
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

enum YTPlayer {
    // MARK: Use cases
    
    enum LoadYoutubeVideo {
        struct Request {
            var id: String
        }
        
        struct Response {
            var id: String
        }
        
        struct ViewModel {
            var id: String
        }
    }
}