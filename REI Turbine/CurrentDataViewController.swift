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
    @IBOutlet weak var turbineImage: UIImageView!
    
    private var rotation: Float!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        update()
        //Timers are like dispatch queue stuff, but have repeating built in.
        //This one is used to rotate the image (animations don't work quite right in the scenario)
        let rotateTimer = Timer(timeInterval: TimeInterval(0.05), target: self,
                selector: #selector(rotate), userInfo: nil, repeats: true)
        RunLoop.main.add(rotateTimer, forMode: .commonModes)
        //This one is used to fetch new data from the data source
        let updateTimer = Timer(timeInterval: TimeInterval(2), target: self,
                selector: #selector(update), userInfo: nil, repeats: true)
        RunLoop.main.add(updateTimer, forMode: .commonModes)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func update() {
        DataSource.update()
        rotation = DataSource.getRotation()
        rotationLabel.text = "\(rotation!) rads/s"
        windLabel.text = "\(DataSource.getWindBearing()) degrees"
        powerLabel.text = "\(DataSource.getPower()) MW"
    }
    
    func rotate() {
        turbineImage.transform = turbineImage.transform.rotated(by: CGFloat(rotation*0.05))
    }
}
