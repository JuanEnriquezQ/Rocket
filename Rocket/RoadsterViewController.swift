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
    loadRoasterInfo()
    }
  
  override func viewDidAppear(_ animated: Bool) {
    animateBG()
  }

  private func loadRoasterInfo() {
      Network.shared.apollo
        .fetch(query: GetRoadsterQuery()) { [weak self] result in
        
          guard let self = self else {
            return
          }

          defer {
            print("reload data...")
            //self.tableView.reloadData()
          }
                
          switch result {
          case .success(let graphQLResult):
            let roadsterData = graphQLResult.data?.roadster
            if let roadster = roadsterData {
              self.nameLabel.text = roadster.name
              self.dateLabel.text = roadster.launchDateUtc
              if let weight = roadster.launchMassKg, let seed = roadster.speedKph, let distance = roadster.earthDistanceKm {
                let commaFormatter = NumberFormatter()
                commaFormatter.numberStyle = .decimal
                
                self.weightLabel.text = "\(weight) Kg"
                self.distanceLabel.text = "\(distance) Km"
                self.speedLabel.text = "\(seed) Km/h"
              }
              self.detailTextView.text = roadster.details
            }
            
          case .failure(let error):
            self.showErrorAlert(title: "Network Error",
                                message: error.localizedDescription)
          }
      }
    }
  
  func animateBG() {
    UIView.animate(withDuration: 35.0) {
      self.roadsterImage.frame.origin.x += 500
    }
  }
}
