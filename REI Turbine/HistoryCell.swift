//
//  HistoryCell.swift
//  REI Turbine
//
//  Created by TSS Checkout on 12/7/16.
//  Copyright © 2016 TSS Checkout. All rights reserved.
//

import UIKit

class HistoryCell: UITableViewCell {
    @IBOutlet weak var index: UILabel!
    @IBOutlet weak var power: UILabel!
    @IBOutlet weak var rotation: UILabel!
    @IBOutlet weak var bearing: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
