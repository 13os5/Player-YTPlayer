//
//  PlayerInteractorTests.swift
//  playerTests
//
//  Created by Warakorn T on 28/3/2567 BE.
//

import XCTest
@testable import player

final class PlayerInteractorTests: XCTestCase {

    var sut: PlayerInteractor?
    var presenterSpy: PlayerPresenterSpy?
    
    override func setUp() async throws {
        
        sut = PlayerInteractor()
        presenterSpy = PlayerPresenterSpy()
        sut?.presenter = presenterSpy
    }

    func test_SetupPlayer_WhenRequestUrlIsNotEmpty_ShouldBeEqualSuccess() {
        // Given
        let request = Player.SetUpPlayer.Request(url: URL(string: "MOCKURL")!)
        
        // When
        sut?.setUpPlayer(request: request)
        
        // Then
        XCTAssertTrue(((presenterSpy?.invokedPresentSetUpPlayer) != nil))
        XCTAssertEqual(presenterSpy?.invokedPresentSetUpPlayerCount, 1)
        XCTAssertEqual(presenterSpy?.invokedPresentSetUpPlayerParameters?.response.url, request.url)
    }
    
    func test_PlayPauseButtonTapped_WhenRequestIsPlayTrue_ShouldBeEqualSuccess() {
        // Given
        let request = Player.PlayPauseButtonTapped.Request(isPlay: true)
        
        // When
        sut?.playPauseButtonTapped(request: request)
        
        // Then
        XCTAssertTrue(((presenterSpy?.invokedPresentPlayPauseButtonTapped) != nil))
        XCTAssertEqual(presenterSpy?.invokedPresentPlayPauseButtonTappedCount, 1)
        XCTAssertEqual(presenterSpy?.invokedPresentPlayPauseButtonTappedParameters?.response.isPlay, request.isPlay)
    }
    
    func test_PlayPauseButtonTapped_WhenRequestIsPlayFalse_ShouldBeEqualSuccess() {
        // Given
        let request = Player.PlayPauseButtonTapped.Request(isPlay: false)
        
        // When
        sut?.playPauseButtonTapped(request: request)
        
        // Then
        XCTAssertTrue(((presenterSpy?.invokedPresentPlayPauseButtonTapped) != nil))
        XCTAssertEqual(presenterSpy?.invokedPresentPlayPauseButtonTappedCount, 1)
        XCTAssertEqual(presenterSpy?.invokedPresentPlayPauseButtonTappedParameters?.response.isPlay, request.isPlay)
    }
    
    func test_SeekBarButtonTapped_WhenRequestSliderValueIsNotZero_ShouldBeEqualSuccess() {
        // Given
        let request = Player.SeekBarButtonTapped.Request(sliderValue: 1.0)
        
        // When
        sut?.seekBarButtonTapped(request: request)
        
        // Then
        XCTAssertTrue(((presenterSpy?.invokedPresentSeekBarButtonTapped) != nil))
        XCTAssertEqual(presenterSpy?.invokedPresentSeekBarButtonTappedCount, 1)
        XCTAssertEqual(presenterSpy?.invokedPresentSeekBarButtonTappedParameters?.response.sliderValue, request.sliderValue)
    }
    
    func test_SeekBarButtonTapped_WhenRequestSliderValueIsZero_ShouldBeEqualSuccess() {
        // Given
        let request = Player.SeekBarButtonTapped.Request(sliderValue: 0.0)
        
        // When
        sut?.seekBarButtonTapped(request: request)
        
        // Then
        XCTAssertTrue(((presenterSpy?.invokedPresentSeekBarButtonTapped) != nil))
        XCTAssertEqual(presenterSpy?.invokedPresentSeekBarButtonTappedCount, 1)
        XCTAssertEqual(presenterSpy?.invokedPresentSeekBarButtonTappedParameters?.response.sliderValue, request.sliderValue)
    }

}
