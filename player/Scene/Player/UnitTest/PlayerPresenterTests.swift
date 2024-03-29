//
//  PlayerPresenterTests.swift
//  playerTests
//
//  Created by Warakorn T on 29/3/2567 BE.
//

import XCTest
import AVKit
@testable import player

final class PlayerPresenterTests: XCTestCase {
    
    var sut: PlayerPresenter?
    var viewControllerSpy: PlayerViewControllerSpy?

    override func setUp() async throws {
        
        sut = PlayerPresenter()
        viewControllerSpy = PlayerViewControllerSpy()
        sut?.viewController = viewControllerSpy
    }

    func test_PresentSetUpPlayer_WhenResponseUrlIsNotEmpty_ShouldBeEqualSuccess() {
        // Given
        let response = Player.SetUpPlayer.Response(url: URL(string: "MOCKURL")!, isAutoPlay: true)
        
        // When
        sut?.presentSetUpPlayer(response: response)
        
        // Then
        XCTAssertTrue(((viewControllerSpy?.invokedDisplaySetUpPlayerLayer) != nil))
        XCTAssertEqual(viewControllerSpy?.invokedDisplaySetUpPlayerLayerCount, 1)
        XCTAssertEqual(viewControllerSpy?.invokedDisplaySetUpPlayerLayerParameters?.viewModel.url, response.url)
        XCTAssertEqual(viewControllerSpy?.invokedDisplaySetUpPlayerLayerParameters?.viewModel.isAutoPlay, response.isAutoPlay)
    }
    
    func test_PresentPlayPauseButtonTapped_WhenResponseIsPlayTrue_ShouldBeEqualSuccess() {
        // Given
        let response = Player.PlayPauseButtonTapped.Response(isPlay: true)
        
        // When
        sut?.presentPlayPauseButtonTapped(response: response)
        
        // Then
        XCTAssertTrue(((viewControllerSpy?.invokedDisplayPlayPauseButtonTapped) != nil))
        XCTAssertEqual(viewControllerSpy?.invokedDisplayPlayPauseButtonTappedCount, 1)
        XCTAssertEqual(viewControllerSpy?.invokedDisplayPlayPauseButtonTappedParameters?.viewModel.isPlay, response.isPlay)
    }
    
    func test_PresentPlayPauseButtonTapped_WhenResponseIsPlayFalse_ShouldBeEqualSuccess() {
        // Given
        let response = Player.PlayPauseButtonTapped.Response(isPlay: false)
        
        // When
        sut?.presentPlayPauseButtonTapped(response: response)
        
        // Then
        XCTAssertTrue(((viewControllerSpy?.invokedDisplayPlayPauseButtonTapped) != nil))
        XCTAssertEqual(viewControllerSpy?.invokedDisplayPlayPauseButtonTappedCount, 1)
        XCTAssertEqual(viewControllerSpy?.invokedDisplayPlayPauseButtonTappedParameters?.viewModel.isPlay, response.isPlay)
    }
    
    func test_PresntSeekBarButtonTapped_WhenResponseSliderValueIsNotZero_ShouldBeEqualSuccess() {
        // Given
        let response = Player.SeekBarButtonTapped.Response(sliderValue: 1.0)
        
        // When
        sut?.presentSeekBarButtonTapped(response: response)
        
        // Then
        XCTAssertTrue(((viewControllerSpy?.invokedDisplaySeekBarButtonTapped) != nil))
        XCTAssertEqual(viewControllerSpy?.invokedDisplaySeekBarButtonTappedCount, 1)
        XCTAssertEqual(viewControllerSpy?.invokedDisplaySeekBarButtonTappedParameters?.viewModel.seekToTime, CMTime(seconds: Double(response.sliderValue), preferredTimescale: 1))
    }
    
    func test_PresnetSeekBarButtonTapped_WhenResponseSliderValueIsZero_ShouldBeEqualSuccess() {
        // Given
        let response = Player.SeekBarButtonTapped.Response(sliderValue: 0.0)
        
        // When
        sut?.presentSeekBarButtonTapped(response: response)
        
        // Then
        XCTAssertTrue(((viewControllerSpy?.invokedDisplaySeekBarButtonTapped) != nil))
        XCTAssertEqual(viewControllerSpy?.invokedDisplaySeekBarButtonTappedCount, 1)
        XCTAssertEqual(viewControllerSpy?.invokedDisplaySeekBarButtonTappedParameters?.viewModel.seekToTime, CMTime(seconds: Double(response.sliderValue), preferredTimescale: 1))
    }
}
