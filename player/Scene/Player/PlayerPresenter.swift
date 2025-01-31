//
//  PlayerPresenter.swift
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

protocol PlayerPresentationLogic {
    func presentSetUpPlayer(response: Player.SetUpPlayer.Response)
    func presentPlayPauseButtonTapped(response: Player.PlayPauseButtonTapped.Response)
    func presentSeekBarButtonTapped(response: Player.SeekBarButtonTapped.Response)
}

class PlayerPresenter: PlayerPresentationLogic {
    weak var viewController: PlayerDisplayLogic?

    func presentSetUpPlayer(response: Player.SetUpPlayer.Response) {
        let viewModel = Player.SetUpPlayer.ViewModel(url: response.url, isAutoPlay: response.isAutoPlay)
        viewController?.displaySetUpPlayerLayer(viewModel: viewModel)
    }
    
    func presentPlayPauseButtonTapped(response: Player.PlayPauseButtonTapped.Response) {
        let playPauseImage = response.isPlay ? UIImage(systemName: "pause.fill") : UIImage(systemName: "play.fill")
        let viewModel = Player.PlayPauseButtonTapped.ViewModel(isPlay: response.isPlay, playPauseImage: playPauseImage ?? UIImage())
        viewController?.displayPlayPauseButtonTapped(viewModel: viewModel)
    }
    
    func presentSeekBarButtonTapped(response: Player.SeekBarButtonTapped.Response) {
        let seekToTime = CMTime(seconds: Double(response.sliderValue), preferredTimescale: 1)
        let viewModel = Player.SeekBarButtonTapped.ViewModel(seekToTime: seekToTime)
        viewController?.displaySeekBarButtonTapped(viewModel: viewModel)
    }
}
