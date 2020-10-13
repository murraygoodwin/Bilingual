//
//  ObjectiveCProjectFromScratchTests.swift
//  ObjectiveCProjectFromScratchTests
//
//  Created by Murray Goodwin on 13/10/2020.
//

import XCTest
import UIKit

@testable import ObjectiveCProjectFromScratch

class ObjectiveCProjectFromScratchTests: XCTestCase {

  var sut: objCViewController!
  var viewModel: ViewModel!
  
  override func setUp() {
    super.setUp()
    sut = objCViewController()
    viewModel = ViewModel.shared() as? ViewModel
  }
  
  func testCheckTheViewModelIsUpdatedWhenAUsernameIsSubmitted() {
    viewModel.currentUser = nil
    sut.createAPerson("Spongebob")
    XCTAssertTrue(viewModel.currentUser.userID == "Spongebob")
  }

}
