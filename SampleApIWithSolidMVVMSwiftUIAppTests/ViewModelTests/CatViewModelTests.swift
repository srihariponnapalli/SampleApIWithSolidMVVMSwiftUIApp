////  CatViewModelTests.swift//  SampleApIWithSolidMVVMSwiftUIApp////  Created by user260588 on 12/24/24.//import XCTest@testable import SampleApIWithSolidMVVMSwiftUIApp@MainActorclass CatViewModelTests: XCTestCase {        var viewModel: CatViewModel!    var mockAPIService: MockAPIService!        override func setUp() {        super.setUp()        mockAPIService = MockAPIService()        viewModel = CatViewModel(apiService: mockAPIService)    }        func testFetchCatImagesSuccess() async {        mockAPIService.mockCats = [Animal(id: "123", url: "https://example.com", width: 500, height: 300)]        await viewModel.fetchCatImages()                XCTAssertEqual(viewModel.cats.count, 0)        XCTAssertNotEqual(viewModel.cats.first?.id, "123")    }        func testFetchCatImagesFailure() async {        mockAPIService.shouldFail = true        await viewModel.fetchCatImages()                XCTAssertNil(viewModel.errorMessage)    }}