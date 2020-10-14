//
//  ObjectiveCProjectFromScratchUITests.swift
//  ObjectiveCProjectFromScratchUITests
//
//  Created by Murray Goodwin on 13/10/2020.
//

import XCTest
import UIKit

@testable import Bilingual

final class ObjectiveCProjectFromScratchUITests: XCTestCase {

  let app = XCUIApplication()
  
  override class func setUp() {
    super.setUp()
    
  }
  
  // FIXME: This is a little inefficient as this test gets run twice.
  func testUpdatingUserIDLabel() {
    app.launch()
    let userNameTextField = app.textFields["userNameTextField"]
    let loginButton = app.buttons["loginButton"]
    let testUserName = "Guybrush"
    
    userNameTextField.tap()
    userNameTextField.typeText(testUserName)
    XCTAssertEqual(userNameTextField.value as! String, testUserName)

    loginButton.tap()
    
    let userNameLabelText = app.staticTexts["userNameLabel"].label
    XCTAssertTrue(userNameLabelText == "UserID: " + testUserName)
  }
  
  func testloggingOutReturnsToLoginViewController() {
    
    testUpdatingUserIDLabel()
    
    let logoutButton = app.navigationBars.buttons["logoutButton"]
    let bilingualLogo = app.images["bilingualLogo"]
    
    logoutButton.tap()
    XCTAssertTrue(bilingualLogo.exists)
      }
  
}
