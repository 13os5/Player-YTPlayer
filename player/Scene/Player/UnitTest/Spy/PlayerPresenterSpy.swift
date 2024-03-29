//
//  PlayerPresenterSpy.swift
//  player
//
//  Created by Warakorn T on 28/3/2567 BE.
//

import Foundation
@testable import player

class PlayerPresenterSpy: PlayerPresentationLogic {

    var invokedPresentSetUpPlayer = false
    var invokedPresentSetUpPlayerCount = 0
    var invokedPresentSetUpPlayerParameters: (response: Player.SetUpPlayer.Response, Void)?
    var invokedPresentSetUpPlayerParametersList = [(response: Player.SetUpPlayer.Response, Void)]()

    func presentSetUpPlayer(response: Player.SetUpPlayer.Response) {
        invokedPresentSetUpPlayer = true
        invokedPresentSetUpPlayerCount += 1
        invokedPresentSetUpPlayerParameters = (response, ())
        invokedPresentSetUpPlayerParametersList.append((response, ()))
    }

    var invokedPresentPlayPauseButtonTapped = false
    var invokedPresentPlayPauseButtonTappedCount = 0
    var invokedPresentPlayPauseButtonTappedParameters: (response: Player.PlayPauseButtonTapped.Response, Void)?
    var invokedPresentPlayPauseButtonTappedParametersList = [(response: Player.PlayPauseButtonTapped.Response, Void)]()

    func presentPlayPauseButtonTapped(response: Player.PlayPauseButtonTapped.Response) {
        invokedPresentPlayPauseButtonTapped = true
        invokedPresentPlayPauseButtonTappedCount += 1
        invokedPresentPlayPauseButtonTappedParameters = (response, ())
        invokedPresentPlayPauseButtonTappedParametersList.append((response, ()))
    }

    var invokedPresentSeekBarButtonTapped = false
    var invokedPresentSeekBarButtonTappedCount = 0
    var invokedPresentSeekBarButtonTappedParameters: (response: Player.SeekBarButtonTapped.Response, Void)?
    var invokedPresentSeekBarButtonTappedParametersList = [(response: Player.SeekBarButtonTapped.Response, Void)]()

    func presentSeekBarButtonTapped(response: Player.SeekBarButtonTapped.Response) {
        invokedPresentSeekBarButtonTapped = true
        invokedPresentSeekBarButtonTappedCount += 1
        invokedPresentSeekBarButtonTappedParameters = (response, ())
        invokedPresentSeekBarButtonTappedParametersList.append((response, ()))
    }
}
