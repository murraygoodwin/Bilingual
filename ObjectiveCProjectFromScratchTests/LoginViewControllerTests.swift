//
//  ObjectiveCProjectFromScratchTests.swift
//  ObjectiveCProjectFromScratchTests
//
//  Created by Murray Goodwin on 13/10/2020.
//

import XCTest
import UIKit

@testable import ObjectiveCProjectFromScratch

final class LoginViewControllerTests: XCTestCase {

  var sut: LoginViewController!
  var viewModel: ViewModel!
  
  override func setUp() {
    super.setUp()
    sut = LoginViewController()
    viewModel = ViewModel.shared() as? ViewModel
  }
  
  func testCheckTheViewModelIsUpdatedWhenAUsernameIsSubmitted() {
    viewModel.currentUser = nil
    sut.createAPerson("Spongebob")
    XCTAssertTrue(viewModel.currentUser.userID == "Spongebob")
  }
  
  // I don't know whether this is needed:... (?)
  override func tearDown() {
    super.tearDown()
    viewModel.currentUser = nil
    viewModel = nil
    sut = nil
  }
  
}
