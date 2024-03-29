//
//  YTPlayerPresenterSpy.swift
//  player
//
//  Created by Warakorn T on 28/3/2567 BE.
//

import Foundation
@testable import player

class YTPlayerPresenterSpy: YTPlayerPresentationLogic {

    var invokedPresentLoadYoutubeVideo = false
    var invokedPresentLoadYoutubeVideoCount = 0
    var invokedPresentLoadYoutubeVideoParameters: (response: YTPlayer.LoadYoutubeVideo.Response, Void)?
    var invokedPresentLoadYoutubeVideoParametersList = [(response: YTPlayer.LoadYoutubeVideo.Response, Void)]()

    func presentLoadYoutubeVideo(response: YTPlayer.LoadYoutubeVideo.Response) {
        invokedPresentLoadYoutubeVideo = true
        invokedPresentLoadYoutubeVideoCount += 1
        invokedPresentLoadYoutubeVideoParameters = (response, ())
        invokedPresentLoadYoutubeVideoParametersList.append((response, ()))
    }
}
