//
//  PlayerInteractor.swift
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

protocol PlayerBusinessLogic {
    func setUpPlayer(request: Player.SetUpPlayer.Request)
    func playPauseButtonTapped(request: Player.PlayPauseButtonTapped.Request)
    func seekBarButtonTapped(request: Player.SeekBarButtonTapped.Request)
}

protocol PlayerDataStore {
    //var name: String { get set }
}

class PlayerInteractor: PlayerBusinessLogic, PlayerDataStore {
    var presenter: PlayerPresentationLogic?
    var worker: PlayerWorker?
    //var name: String = ""
    
    func setUpPlayer(request: Player.SetUpPlayer.Request) {
        let response = Player.SetUpPlayer.Response(url: request.url, isAutoPlay: true)
        presenter?.presentSetUpPlayer(response: response)
    }
    
    func playPauseButtonTapped(request: Player.PlayPauseButtonTapped.Request) {
        let response = Player.PlayPauseButtonTapped.Response(isPlay: request.isPlay)
        presenter?.presentPlayPauseButtonTapped(response: response)
    }
    
    func seekBarButtonTapped(request: Player.SeekBarButtonTapped.Request) {
        let response = Player.SeekBarButtonTapped.Response(sliderValue: request.sliderValue)
        presenter?.presentSeekBarButtonTapped(response: response)
    }
}
