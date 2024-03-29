//
//  YTPlayerViewControllerSpy.swift
//  player
//
//  Created by Warakorn T on 28/3/2567 BE.
//

import Foundation
@testable import player

class YTPlayerViewControllerSpy: YTPlayerDisplayLogic {

    var invokedDisplayLoadYoutubeVideo = false
    var invokedDisplayLoadYoutubeVideoCount = 0
    var invokedDisplayLoadYoutubeVideoParameters: (viewModel: YTPlayer.LoadYoutubeVideo.ViewModel, Void)?
    var invokedDisplayLoadYoutubeVideoParametersList = [(viewModel: YTPlayer.LoadYoutubeVideo.ViewModel, Void)]()

    func displayLoadYoutubeVideo(viewModel: YTPlayer.LoadYoutubeVideo.ViewModel) {
        invokedDisplayLoadYoutubeVideo = true
        invokedDisplayLoadYoutubeVideoCount += 1
        invokedDisplayLoadYoutubeVideoParameters = (viewModel, ())
        invokedDisplayLoadYoutubeVideoParametersList.append((viewModel, ()))
    }
}
