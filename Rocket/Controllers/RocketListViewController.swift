//
//  RocketListViewController.swift
//  Rocket
//
//  Created by Juan Enriquez on 19/08/21.
//

import UIKit

class RocketListViewController: UIViewController {

  var rocketList = [GetRocktsQuery.Data.Rocket]()
  @IBOutlet weak var rocketsTableView: UITableView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      getRockets()
    }
  
  func getRockets() {
    Network.shared.requestData(queryType: .rockets) { data, error in
      if let data = data {
        if let rockets = data as? [GetRocktsQuery.Data.Rocket] {
          self.rocketList = rockets
          self.rocketsTableView.reloadData()
        }
        
        if let error = error {
          self.showErrorAlert(title: "Error", message: error.localizedDescription)
        }
      }
    }
  }

}

extension RocketListViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return rocketList.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = rocketsTableView.dequeueReusableCell(withIdentifier: "rocket_cell") as? RocketTableViewCell
    cell?.configureWithRocket(rocket: rocketList[indexPath.row])
    cell?.delegate = self
    return cell ?? UITableViewCell()
  }
  
  
}

extension RocketListViewController: RocketCellProtocol {
  func rocketTapped(rocket: GetRocktsQuery.Data.Rocket) {
    let storyboard: UIStoryboard = UIStoryboard(name: "RocketList", bundle: nil)
    let vc = storyboard.instantiateViewController(withIdentifier: "rocket_detail") as? RocketDetailViewController
    vc?.rocket = rocket
    if let viewController = vc {
      self.present(viewController, animated: true, completion: nil)
    }
  }
}
