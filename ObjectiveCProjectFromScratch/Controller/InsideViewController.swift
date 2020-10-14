//
//  SwiftViewController.swift
//  ObjectiveCProjectFromScratch
//
//  Created by Murray Goodwin on 09/10/2020.
//

import UIKit
import AnimatedStars

final class InsideViewController: UIViewController {
  
  @IBOutlet weak var userIDLabel: UILabel!
  @IBOutlet weak var passwordLabel: UILabel!
  @IBOutlet weak var loginCount: UILabel!
  @IBOutlet weak var optedInForAdsLabel: UILabel!

  let viewModel = ViewModel.shared() as! ViewModel
  
  override func viewDidLoad() {
    super.viewDidLoad()
    updateUI()
    let stars = AnimatedStars()
    stars.animateStars(vc: self)
    
    let soundEngine = SoundEngine.shared
    soundEngine.playSound(sound: "GoodNews")
  }
  
  private func updateUI() {
    
    userIDLabel.text = "UserID: "
    passwordLabel.text = "Password: "
    loginCount.text = "Logins: "
    optedInForAdsLabel.text = "Opted in for Ads: "

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
