//
//  YTPlayerPresenter.swift
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

protocol YTPlayerPresentationLogic {
    func presentLoadYoutubeVideo(response: YTPlayer.LoadYoutubeVideo.Response)
}

class YTPlayerPresenter: YTPlayerPresentationLogic {
    weak var viewController: YTPlayerDisplayLogic?
    
    func presentLoadYoutubeVideo(response: YTPlayer.LoadYoutubeVideo.Response) {
        let viewModel = YTPlayer.LoadYoutubeVideo.ViewModel(id: response.id)
        viewController?.displayLoadYoutubeVideo(viewModel: viewModel)
    }
}
