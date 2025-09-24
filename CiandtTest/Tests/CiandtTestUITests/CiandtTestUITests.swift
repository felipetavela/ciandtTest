//
//  CiandtTestUITests.swift
//  CiandtTestUITests
//
//  Created by Felipe Tavela on 24/09/25.
//

import XCTest

final class CiandtTestUITests: XCTestCase {
    
    func testOpenListAndDetail() {
        let app = XCUIApplication()
        app.launch()
        
        let firstCell = app.buttons.firstMatch
        XCTAssertTrue(firstCell.waitForExistence(timeout: 5))
        print(app.debugDescription)
        firstCell.tap()
        
        let detailTitle = app.staticTexts.firstMatch
        XCTAssertTrue(detailTitle.exists)
    }
}
