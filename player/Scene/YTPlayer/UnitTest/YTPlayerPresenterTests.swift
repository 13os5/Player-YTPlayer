//
//  YTPlayerPresenterTests.swift
//  playerTests
//
//  Created by Warakorn T on 29/3/2567 BE.
//

import XCTest
@testable import player

final class YTPlayerPresenterTests: XCTestCase {

    var sut: YTPlayerPresenter?
    var viewControllerSpy: YTPlayerViewControllerSpy?
    
    override func setUp() async throws {
        sut = YTPlayerPresenter()
        viewControllerSpy = YTPlayerViewControllerSpy()
        sut?.viewController = viewControllerSpy
    }

    func test_PresentLoadYoutubeVideo_WhenResponseIdIsNotEmpty_ShouldBeEqualSuccess() {
        // Given
        let response = YTPlayer.LoadYoutubeVideo.Response(id: "MOCK")
        
        // When
        sut?.presentLoadYoutubeVideo(response: response)
        
        // Then
        XCTAssert(((viewControllerSpy?.invokedDisplayLoadYoutubeVideo) != nil))
        XCTAssertEqual(viewControllerSpy?.invokedDisplayLoadYoutubeVideoCount, 1)
        XCTAssertEqual(viewControllerSpy?.invokedDisplayLoadYoutubeVideoParameters?.viewModel.id, response.id)
    }
}
