//
//  MainScreenViewController.swift
//  Rocket
//
//  Created by Juan Enriquez on 17/08/21.
//

import UIKit
import SwiftSpinner

class MainScreenViewController: UIViewController {
  
  @IBOutlet weak var worldImageView: UIImageView!
  @IBOutlet weak var spaceTableView: UITableView!
  let cellsToDisplay =  [ApolloCellType.nextLaunch, ApolloCellType.company, ApolloCellType.rockets, ApolloCellType.roadster,  ApolloCellType.lastLaunch]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
  override func viewDidAppear(_ animated: Bool) {
    animateBG()
  }
  
  func animateBG() {
    UIView.animate(withDuration: 60.0) {
      self.worldImageView.transform = CGAffineTransform(rotationAngle: -250)
      
    }
  }
}

//MARK: TableView Delegates
extension MainScreenViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return cellsToDisplay.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = spaceTableView.dequeueReusableCell(withIdentifier: "main_cell") as? MainTableViewCell
    cell?.configureWithType(type: cellsToDisplay[indexPath.row])
    cell?.delegate = self
    return cell ?? UITableViewCell()
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 140
  }
}

//MARK: Cell Delegates
extension MainScreenViewController: CellTapProtocol {
  func cellTapped(type: ApolloCellType) {
    switch type {
    case .nextLaunch:
      let storyboard: UIStoryboard = UIStoryboard(name: "NextLaunch", bundle: nil)
      let vc = storyboard.instantiateViewController(withIdentifier: "next_launch_detail") as? NextLaunchViewController
      if let viewController = vc {
        self.present(viewController, animated: true, completion: nil)
      }
    case .roadster:
      let storyboard: UIStoryboard = UIStoryboard(name: "RoadsterInSpace", bundle: nil)
      let vc = storyboard.instantiateViewController(withIdentifier: "roadster") as? RoadsterViewController
      if let viewController = vc {
        self.present(viewController, animated: true, completion: nil)
      }
    case .company:
      let storyboard: UIStoryboard = UIStoryboard(name: "SpaceX", bundle: nil)
      let vc = storyboard.instantiateViewController(withIdentifier: "company") as? SpaceXViewController
      if let viewController = vc {
        self.present(viewController, animated: true, completion: nil)
      }
    case .lastLaunch:
      let storyboard: UIStoryboard = UIStoryboard(name: "NextLaunch", bundle: nil)
      let vc = storyboard.instantiateViewController(withIdentifier: "next_launch_detail") as? NextLaunchViewController
      vc?.isLast = true
      if let viewController = vc {
        self.present(viewController, animated: true, completion: nil)
      }
    case .rockets:
      let storyboard: UIStoryboard = UIStoryboard(name: "RocketList", bundle: nil)
      let vc = storyboard.instantiateViewController(withIdentifier: "rockets") as? RocketListViewController
      if let viewController = vc {
        self.present(viewController, animated: true, completion: nil)
      }
    default:
      print("duuuh")
    }
  }
}
