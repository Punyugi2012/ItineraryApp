//
//  TripsViewController.swift
//  Itinerary
//
//  Created by punyawee  on 4/7/61.
//  Copyright © พ.ศ. 2561 Punyugi. All rights reserved.
//

import UIKit

class TripsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        TripFunction.readTrips { [weak self] in
            self?.tableView.reloadData()
        }
        view.backgroundColor = Theme.background
        addButton.layer.cornerRadius = addButton.frame.height / 2
        addButton.backgroundColor = Theme.tint
        addButton.layer.shadowOpacity = 0.25
        addButton.layer.shadowOffset = CGSize(width: 0, height: 5)
        addButton.layer.shadowRadius = 5
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.tripModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TripCell", for: indexPath)
        if let tripCell = cell as? TripTableViewCell {
            tripCell.setupCell(title: Data.tripModels[indexPath.row].title)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(160)
    }
    
}
