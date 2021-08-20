//
//  NextLaunchViewController.swift
//  Rocket
//
//  Created by Juan Enriquez on 17/08/21.
//

import UIKit
import MapKit
import SwiftSpinner

class NextLaunchViewController: UIViewController {

  @IBOutlet weak var dateLabel: UILabel!
  @IBOutlet weak var locationLabel: UILabel!
  @IBOutlet weak var missionNameLabel: UILabel!
  @IBOutlet weak var rocketNameTypeLabel: UILabel!
  @IBOutlet weak var rocketLaunchImageView: UIImageView!
  @IBOutlet weak var detailTextView: UITextView!
  
  
  var isLast = false
  var lastLaunch: LastLaunchQuery.Data.LaunchLatest?
  var nextLaunch: LaunchNextQuery.Data.LaunchNext?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    isLast ? loadLatestLaunch() : loadNextLaunch()
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
  
  private func loadNextLaunch() {
    Network.shared.requestData(queryType: .nextLaunch) { data, error in
      if let data = data {
        if let launch = data as? LaunchNextQuery.Data.LaunchNext {
          self.nextLaunch = launch
          self.populateUI()
        }
      } else if let error = error {
        self.showErrorAlert(title: "Error", message: error.localizedDescription)
      }
    }
  }
  
  private func loadLatestLaunch() {
    Network.shared.requestData(queryType: .lastLaunch) { data, error in
      if let data = data {
        if let launch = data as? LastLaunchQuery.Data.LaunchLatest? {
          self.lastLaunch = launch
          self.populateUI()
        }
      } else if let error = error {
        self.showErrorAlert(title: "Error", message: error.localizedDescription)
      }
    }
  }
  
  func populateUI() {
    if isLast {
      if let launch = lastLaunch {
        dateLabel.text = launch.launchDateLocal
        locationLabel.text = launch.launchSite?.siteNameLong
        missionNameLabel.text = launch.missionName
        if let type = launch.rocket?.rocketType, let name = launch.rocket?.rocketName {
          rocketNameTypeLabel.text = "\(type) \(name)"
        }
        detailTextView.text = launch.details
      }
    } else {
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
}
