//
//  SwiftViewController.swift
//  ObjectiveCProjectFromScratch
//
//  Created by Murray Goodwin on 09/10/2020.
//

import UIKit

final class SwiftViewController: UIViewController {
  
  @IBOutlet weak var userIDLabel: UILabel!
  @IBOutlet weak var passwordLabel: UILabel!
  @IBOutlet weak var loginCount: UILabel!
  @IBOutlet weak var optedInForAdsLabel: UILabel!
  
  var viewModel = ViewModel()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    updateUI()
  }
  
  private func updateUI() {
    
    userIDLabel.text = "UserID: "
    passwordLabel.text = "Password: "
    loginCount.text = "Logins: "
    optedInForAdsLabel.text = "Opted in for Ads: "
    
    
    //FIXME: Need to find a way to make the ViewModel a single instance rather than a separate instance...
    guard viewModel.currentUser != nil else {
      fatalError("Swift View Controller found an empty current user record in the ViewModel.")
    }
    
    userIDLabel.text = "UserID: " + viewModel.currentUser.userID
    passwordLabel.text = "Password: " + viewModel.currentUser.password
    loginCount.text = "Logins: " + String(viewModel.currentUser.loginCount)
    optedInForAdsLabel.text = "Opted in for Ads: " + String(Bool(viewModel.currentUser.isOptedInForAds))
  }
  
  @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
    self.dismiss(animated: true, completion: nil)
  }
  
}
