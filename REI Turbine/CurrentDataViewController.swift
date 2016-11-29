//
//  CurrentDataViewController.swift
//  REI Turbine
//
//  Created by TSS Checkout on 11/29/16.
//  Copyright © 2016 TSS Checkout. All rights reserved.
//

import UIKit

class CurrentDataViewController: UIViewController {
    @IBOutlet weak var rotationLabel: UILabel!
    @IBOutlet weak var windLabel: UILabel!
    @IBOutlet weak var powerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        rotationLabel.text = "\(DataSource.getRotation()) rads/s"
        windLabel.text = "\(DataSource.getWindBearing()) degrees"
        powerLabel.text = "\(DataSource.getPower()) KW"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
