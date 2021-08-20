//
//  SpaceXViewController.swift
//  Rocket
//
//  Created by Juan Enriquez on 19/08/21.
//

import UIKit

class SpaceXViewController: UIViewController {
  
  var spaceXData: GetSpaceXQuery.Data.Company?

  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var locationLabel: UILabel!
  @IBOutlet weak var foundationLabel: UILabel!
  @IBOutlet weak var employeesLabel: UILabel!
  @IBOutlet weak var detailTextView: UITextView!
  @IBOutlet weak var ceoNameLabel: UILabel!
  override func viewDidLoad() {
        super.viewDidLoad()
        loadCompany()
    }
  
  private func loadCompany() {
    Network.shared.requestData(queryType: .company) { data, error in
      if let data = data {
        if let company = data as? GetSpaceXQuery.Data.Company {
          self.spaceXData = company
          self.createUI()
        }
      }
      
      if let error = error {
        self.showErrorAlert(title: "Error", message: error.localizedDescription)
      }
    }
  }
  
  func createUI() {
    if let company = spaceXData {
      nameLabel.text = company.name
      if let employees = company.employees {
        employeesLabel.text = employees.commaSeparatedFormat()
      }
      locationLabel.text = company.headquarters?.city
      if let foundation = company.founded {
        foundationLabel.text = String(describing: foundation)
      }
      ceoNameLabel.text = company.ceo
      detailTextView.text = company.summary
    }
  }
  
  @IBAction func companyWebsite(_ sender: Any) {
    if let company = spaceXData, let link = company.links?.website,  let url = URL(string: link) {
        UIApplication.shared.open(url)
    }
  }
  @IBAction func companyTwitter(_ sender: Any) {
    if let company = spaceXData, let link = company.links?.twitter,  let url = URL(string: link) {
        UIApplication.shared.open(url)
    }
  }
  @IBAction func elonTwitter(_ sender: Any) {
    if let company = spaceXData, let link = company.links?.elonTwitter,  let url = URL(string: link) {
        UIApplication.shared.open(url)
    }
  }
  
}
