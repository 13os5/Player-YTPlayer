//
//  YTPlayerInteractorTests.swift
//  playerTests
//
//  Created by Warakorn T on 29/3/2567 BE.
//

import XCTest
@testable import player

final class YTPlayerInteractorTests: XCTestCase {

    var sut: YTPlayerInteractor?
    var presenterSpy: YTPlayerPresenterSpy?
    
    override func setUp() async throws {
        sut = YTPlayerInteractor()
        presenterSpy = YTPlayerPresenterSpy()
        sut?.presenter = presenterSpy
    }

    func test_LoadYoutubeVideo_WhenRequestIdIsNotEmpty_ShouldBeEqualSuccess() {
        // Given
        let request = YTPlayer.LoadYoutubeVideo.Request(id: "MOCK")
        
        // When
        sut?.loadYoutubeVideo(request: request)
        
        // Then
        XCTAssert(((presenterSpy?.invokedPresentLoadYoutubeVideo) != nil))
        XCTAssertEqual(presenterSpy?.invokedPresentLoadYoutubeVideoCount, 1)
        XCTAssertEqual(presenterSpy?.invokedPresentLoadYoutubeVideoParameters?.response.id, request.id)
    }
}
