//
//  ViewController.swift
//  Rocket
//
//  Created by Juan Enriquez on 17/08/21.
//

import UIKit
import SwiftConfettiView

var nextLaunch = LaunchNextQuery.Data.LaunchNext()

class ViewController: UIViewController {
  
  @IBOutlet weak var confettiView: SwiftConfettiView!
  @IBOutlet weak var rocketImage: UIImageView!
  @IBOutlet weak var nameImage: UIImageView!
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    confettiView.type = .star
    confettiView.colors = [UIColor.red, UIColor.yellow, UIColor.orange]
    confettiView.startConfetti()
    confettiView.intensity = 1
    nameImage.startBlink()
    DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
      self.nameImage.stopBlink()
      self.nameImage.fadeOut()
      self.animateRocket()
      DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
        self.fadeOutParticles()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
          self.navigateToMain()
        }
      }
    }
    
  }
  
  func navigateToMain() {
    let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    let vc = storyboard.instantiateViewController(withIdentifier: "main_view") as? MainScreenViewController
    if let viewController = vc {
      self.show(viewController, sender: self)
    }
  }
  
  func fadeOutParticles() {
    UIView.animate(withDuration: 1) {
      self.confettiView.alpha = 0
    }
  }
  
  func animateRocket() {
    UIView.animate(withDuration: 1) {
      self.rocketImage.transform = CGAffineTransform(rotationAngle: -0.904564)
      self.rocketImage.frame.origin.y -= 800
    }
  }
  
}

