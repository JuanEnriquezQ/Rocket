//
//  MainScreenViewController.swift
//  Rocket
//
//  Created by Juan Enriquez on 17/08/21.
//

import UIKit

class MainScreenViewController: UIViewController {
  
  @IBOutlet weak var spaceTableView: UITableView!
  let cellsToDisplay =  [ApolloCellType.nextLaunch, ApolloCellType.company, ApolloCellType.rockets]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    print("NAVIGATE TO \(type)")
  }
}
