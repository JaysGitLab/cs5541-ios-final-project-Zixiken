//
//  HistoryViewController.swift
//  REI Turbine
//
//  Created by TSS Checkout on 12/7/16.
//  Copyright © 2016 TSS Checkout. All rights reserved.
//

import UIKit

class HistoryViewController: UITableViewController {
    private let cellID = "historyCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataSource.getHistoryCount()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! HistoryCell
        let index = DataSource.getHistoryCount()-indexPath.row-1
        let data = DataSource.getHistory(index)
        cell.index.text = "\(index)"
        cell.rotation.text = "Rotation: \(data[0]) rads/sec"
        cell.bearing.text = "Wind Bearing: \(data[1]) degrees"
        cell.power.text = "Power Generation: \(data[2]) MW"
        return cell
    }
}
