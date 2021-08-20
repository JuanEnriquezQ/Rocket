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

extension UIViewController {
  func showErrorAlert(title: String, message: String) {
    let alert = UIAlertController(title: title,
                                  message: message,
                                  preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .default))
    self.present(alert, animated: true)
  }
}

extension Int {
    private static var numberFormatter: NumberFormatter = {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal

        return numberFormatter
    }()

    var delimiter: String {
        return Int.numberFormatter.string(from: NSNumber(value: self)) ?? ""
    }
  
  func commaSeparatedFormat() -> String {
    let numberFormatter = NumberFormatter()
     numberFormatter.numberStyle = NumberFormatter.Style.decimal
     return numberFormatter.string(from: NSNumber(value:self)) ?? ""
  }
}

extension Double {
  func twoDigits() -> String {
    return String(format: "%.2f", self)
  }
}

extension String {
  func formatDate() -> String {
    let dateFormatterGet = DateFormatter()
    dateFormatterGet.dateFormat = "yyyy-MM-ddTHH:mm-sssZ"

    let dateFormatterPrint = DateFormatter()
    dateFormatterPrint.dateFormat = "MMM dd,yyyy"
    
    if let date = dateFormatterGet.date(from: self) {
      return dateFormatterPrint.string(from: date)
    } else {
      return self
    }
  }
}
