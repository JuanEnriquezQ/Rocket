//
//  RoadsterViewController.swift
//  Rocket
//
//  Created by Juan Enriquez on 17/08/21.
//

import UIKit

class RoadsterViewController: UIViewController {

  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var roadsterImage: UIImageView!
  @IBOutlet weak var weightLabel: UILabel!
  @IBOutlet weak var distanceLabel: UILabel!
  @IBOutlet weak var speedLabel: UILabel!
  @IBOutlet weak var detailTextView: UITextView!
  @IBOutlet weak var dateLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    loadRoaster()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    animateBG()
  }
  
  private func loadRoaster() {
    Network.shared.requestData(queryType: .roadster) { data, error in
      if let data = data {
        if let roadster = data as? GetRoadsterQuery.Data.Roadster {
          self.nameLabel.text = roadster.name
          self.dateLabel.text = roadster.launchDateUtc
          if let weight = roadster.launchMassKg, let seed = roadster.speedKph, let distance = roadster.earthDistanceKm {
            let commaFormatter = NumberFormatter()
            commaFormatter.numberStyle = .decimal
            
            self.weightLabel.text = "\(weight.commaSeparatedFormat()) Kg"
            self.distanceLabel.text = "\(distance.twoDigits()) Km"
            self.speedLabel.text = "\(seed.twoDigits()) Km/h"
          }
          self.detailTextView.text = roadster.details
        }
      }
      
      if let error = error {
        self.showErrorAlert(title: "Error", message: error.localizedDescription)
      }
    }
  }
  
  func animateBG() {
    UIView.animate(withDuration: 35.0) {
      self.roadsterImage.frame.origin.x += 500
    }
  }
}
