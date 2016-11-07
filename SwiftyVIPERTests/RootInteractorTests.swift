//
//  RootInteractorTests.swift
//  SwiftyVIPER
//
//  Created by Cody Winton on 11/7/16.
//  Copyright © 2016 codeRed. All rights reserved.
//

// MARK: Imports

import XCTest

@testable import SwiftyVIPER


// MARK: -

class RootInteractorTests: XCTestCase {
	
	// MARK: - Variables
	
	fileprivate let presenter = MockPresenter()
	
	fileprivate lazy var interactor: RootInteractor = {
		let interactor = RootInteractor()
		interactor.presenter = self.presenter
		return interactor
	}()
	
	
	// MARK: Test Functions
	
	func testPresenter() {
		interactor.requestTitle()
		XCTAssertEqual(presenter.title, "Root")
	}
	
	
	// MARK: Setup
	
    override func setUp() {
        super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
}


// MARK: - Mock Classes

// MARK: -

fileprivate class MockPresenter: NSObject, RootInteractorPresenterProtocol {
	
	// MARK: Variables
	
	var title: String? = nil
	
	
	// MARK: Functions
	
	func set(title: String?) {
		self.title = title
	}
}
