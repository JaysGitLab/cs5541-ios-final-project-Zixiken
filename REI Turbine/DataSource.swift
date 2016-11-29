//
//  DataSource.swift
//  REI Turbine
//
//  Created by TSS Checkout on 11/29/16.
//  Copyright © 2016 TSS Checkout. All rights reserved.
//

import Foundation

final class DataSource {
    private static let rotation = 5
    private static let windBearing = 90
    private static let power = 1.21
    
    static func getRotation() -> Int {return rotation}
    
    static func getWindBearing() -> Int {return windBearing}
    
    static func getPower() -> Double {return power}
}
