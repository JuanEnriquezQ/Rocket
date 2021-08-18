//
//  NextLaunchViewController.swift
//  Rocket
//
//  Created by Juan Enriquez on 17/08/21.
//

import UIKit
import MapKit

class NextLaunchViewController: UIViewController {

  @IBOutlet weak var dateLabel: UILabel!
  @IBOutlet weak var locationLabel: UILabel!
  @IBOutlet weak var missionNameLabel: UILabel!
  @IBOutlet weak var rocketNameTypeLabel: UILabel!
  @IBOutlet weak var rocketLaunchImageView: UIImageView!
  @IBOutlet weak var detailTextView: UITextView!
  
  
  var nextLaunch: LaunchNextQuery.Data.LaunchNext?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    loadLaunches()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    animateBG()
  }
  
  @IBAction func viewInMaps(_ sender: Any) {
  }
  
  @IBAction func addToCalendar(_ sender: Any) {
  }
  
  func animateBG() {
    UIView.animate(withDuration: 35.0) {
      self.rocketLaunchImageView.frame.origin.x += 500
    }
  }
  
  private func loadLaunches() {
      Network.shared.apollo
        .fetch(query: LaunchNextQuery()) { [weak self] result in
        
          guard let self = self else {
            return
          }

          defer {
            print("reload data...")
            //self.tableView.reloadData()
          }
                
          switch result {
          case .success(let graphQLResult):
            self.nextLaunch = graphQLResult.data?.launchNext
            self.populateUI()
          case .failure(let error):
            self.showErrorAlert(title: "Network Error",
                                message: error.localizedDescription)
          }
      }
    }
  
  func populateUI() {
    if let launch = nextLaunch {
      dateLabel.text = launch.launchDateLocal
      locationLabel.text = launch.launchSite?.siteNameLong
      missionNameLabel.text = launch.missionName
      if let type = launch.rocket?.rocketType, let name = launch.rocket?.rocketName {
        rocketNameTypeLabel.text = "\(type) \(name)"
      }
      detailTextView.text = launch.details
    }
  }
}
