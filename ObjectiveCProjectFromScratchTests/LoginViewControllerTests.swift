//
//  ObjectiveCProjectFromScratchTests.swift
//  ObjectiveCProjectFromScratchTests
//
//  Created by Murray Goodwin on 13/10/2020.
//

import XCTest
import UIKit

@testable import Bilingual

final class LoginViewControllerTests: XCTestCase {

  var sut: LoginViewController!
  var viewModel: ViewModel!
  
  override func setUp() {
    super.setUp()
    sut = LoginViewController()
    sut.viewModel = ViewModel()
  }
  
  func testCheckTheViewModelIsUpdatedWhenAUsernameIsSubmitted() {
    sut.viewModel.currentUser = nil
    sut.createAPerson("Spongebob")
    XCTAssertTrue(sut.viewModel.currentUser.userID == "Spongebob")
  }
  
  // I don't know whether this is needed:... (?)
  override func tearDown() {
    super.tearDown()
    sut.viewModel.currentUser = nil
    sut.viewModel = nil
    sut = nil
  }
  
}
