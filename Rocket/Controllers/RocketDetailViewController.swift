//
//  RocketDetailViewController.swift
//  Rocket
//
//  Created by Juan Enriquez on 19/08/21.
//

import UIKit

class RocketDetailViewController: UIViewController {
  
  @IBOutlet weak var name: UILabel!
  @IBOutlet weak var weight: UILabel!
  @IBOutlet weak var diameter: UILabel!
  @IBOutlet weak var active: UILabel!
  @IBOutlet weak var height: UILabel!
  @IBOutlet weak var cost: UILabel!
  @IBOutlet weak var country: UILabel!
  @IBOutlet weak var desc: UITextView!
  
  var rocket: GetRocktsQuery.Data.Rocket?

    override func viewDidLoad() {
        super.viewDidLoad()
      if let rocket = rocket {
        name.text = rocket.name
        if let kg = rocket.mass?.kg, let heigt = rocket.height?.meters, let diam = rocket.diameter?.meters {
          weight.text = "\(kg.commaSeparatedFormat()) kg"
          diameter.text = "\(diam.twoDigits()) meters"
          height.text = "\(heigt.twoDigits()) meters"
        }
        
        if let status = rocket.active {
          active.text = status ? "Active" : "Inactive"
        }
        
        if let lcost = rocket.costPerLaunch {
          cost.text = "$ \(lcost.commaSeparatedFormat()) USD/Launch"
        }
        
        country.text = rocket.country
        desc.text = rocket.description
      }
    }

}
