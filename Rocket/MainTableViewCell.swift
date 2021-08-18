//
//  MainTableViewCell.swift
//  Rocket
//
//  Created by Juan Enriquez on 17/08/21.
//

import UIKit

protocol CellTapProtocol {
  func cellTapped(type: ApolloCellType)
}
class MainTableViewCell: UITableViewCell {

  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var bgImageView: UIImageView!
  var cellType: ApolloCellType?
  var delegate: CellTapProtocol?
  
  @IBAction func tapEvent(_ sender: Any) {
    if let type = cellType {
      delegate?.cellTapped(type: type)
    }
  }
  func configureWithType(type: ApolloCellType) {
    self.cellType = type
    switch type {
    case .company:
      bgImageView.image = UIImage(named: "cell_company")
      titleLabel.text = "About SpaceX"
    case .nextLaunch:
      bgImageView.image = UIImage(named: "cell_nextlaunch")
      titleLabel.text = "Next Launch"
    case .rockets:
      bgImageView.image = UIImage(named: "cell_rockets")
      titleLabel.text = "Rockets"
    }
  }
  override func awakeFromNib() {
        super.awakeFromNib()
  }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}


enum ApolloCellType {
  case company
  case nextLaunch
  case rockets
}
