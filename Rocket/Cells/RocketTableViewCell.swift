//
//  RocketTableViewCell.swift
//  Rocket
//
//  Created by Juan Enriquez on 19/08/21.
//

import UIKit

protocol RocketCellProtocol {
  func rocketTapped(rocket: GetRocktsQuery.Data.Rocket)
}
class RocketTableViewCell: UITableViewCell {

  @IBOutlet weak var rocketName: UILabel!
  var rocket: GetRocktsQuery.Data.Rocket?
  var delegate: RocketCellProtocol?
  
    override func awakeFromNib() {
        super.awakeFromNib()
    }
  
  @IBAction func tapEvent(_ sender: Any) {
    if let rocket = rocket {
      delegate?.rocketTapped(rocket: rocket)
    }
  }
  
  func configureWithRocket(rocket: GetRocktsQuery.Data.Rocket) {
    self.rocket = rocket
    rocketName.text = rocket.name
  }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
