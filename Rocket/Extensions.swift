//
//  Extensions.swift
//  Rocket
//
//  Created by Juan Enriquez on 17/08/21.
//

import Foundation
import UIKit


extension UIImageView {
  func startBlink() {
          UIImageView.animate(withDuration: 0.8,
                delay:0.0,
                options:[.allowUserInteraction, .curveEaseIn, .autoreverse, .curveLinear, .repeat],
                animations: { self.alpha = 0 },
                completion: nil)
  }
  func stopBlink() {
          layer.removeAllAnimations()
          alpha = 1
  }
  func fadeOut() {
    UIImageView.animate(withDuration: 1.0,
          delay:0.0,
          options:[.allowUserInteraction],
          animations: { self.alpha = 0 },
          completion: nil)
  }
}
