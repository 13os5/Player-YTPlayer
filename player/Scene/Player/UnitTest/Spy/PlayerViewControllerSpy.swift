//
//  PlayerViewControllerSpy.swift
//  player
//
//  Created by Warakorn T on 28/3/2567 BE.
//

import Foundation
@testable import player

class PlayerViewControllerSpy: PlayerDisplayLogic {

    var invokedDisplaySetUpPlayerLayer = false
    var invokedDisplaySetUpPlayerLayerCount = 0
    var invokedDisplaySetUpPlayerLayerParameters: (viewModel: Player.SetUpPlayer.ViewModel, Void)?
    var invokedDisplaySetUpPlayerLayerParametersList = [(viewModel: Player.SetUpPlayer.ViewModel, Void)]()

    func displaySetUpPlayerLayer(viewModel: Player.SetUpPlayer.ViewModel) {
        invokedDisplaySetUpPlayerLayer = true
        invokedDisplaySetUpPlayerLayerCount += 1
        invokedDisplaySetUpPlayerLayerParameters = (viewModel, ())
        invokedDisplaySetUpPlayerLayerParametersList.append((viewModel, ()))
    }

    var invokedDisplayPlayPauseButtonTapped = false
    var invokedDisplayPlayPauseButtonTappedCount = 0
    var invokedDisplayPlayPauseButtonTappedParameters: (viewModel: Player.PlayPauseButtonTapped.ViewModel, Void)?
    var invokedDisplayPlayPauseButtonTappedParametersList = [(viewModel: Player.PlayPauseButtonTapped.ViewModel, Void)]()

    func displayPlayPauseButtonTapped(viewModel: Player.PlayPauseButtonTapped.ViewModel) {
        invokedDisplayPlayPauseButtonTapped = true
        invokedDisplayPlayPauseButtonTappedCount += 1
        invokedDisplayPlayPauseButtonTappedParameters = (viewModel, ())
        invokedDisplayPlayPauseButtonTappedParametersList.append((viewModel, ()))
    }

    var invokedDisplaySeekBarButtonTapped = false
    var invokedDisplaySeekBarButtonTappedCount = 0
    var invokedDisplaySeekBarButtonTappedParameters: (viewModel: Player.SeekBarButtonTapped.ViewModel, Void)?
    var invokedDisplaySeekBarButtonTappedParametersList = [(viewModel: Player.SeekBarButtonTapped.ViewModel, Void)]()

    func displaySeekBarButtonTapped(viewModel: Player.SeekBarButtonTapped.ViewModel) {
        invokedDisplaySeekBarButtonTapped = true
        invokedDisplaySeekBarButtonTappedCount += 1
        invokedDisplaySeekBarButtonTappedParameters = (viewModel, ())
        invokedDisplaySeekBarButtonTappedParametersList.append((viewModel, ()))
    }
}
