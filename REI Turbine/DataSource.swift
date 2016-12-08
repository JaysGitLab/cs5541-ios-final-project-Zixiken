//
//  DataSource.swift
//  REI Turbine
//
//  Created by TSS Checkout on 11/29/16.
//  Copyright © 2016 TSS Checkout. All rights reserved.
//

import Foundation

final class DataSource {
    private static let wattsPerRadian: Float = 0.47770700636943 //3MW per rotation
    
    private static var rotation: Float!
    private static var windBearing: Float!
    private static var power: Float!
    private static var history = [Int: [Float]]()
    private static var index = 0
    
    static func getRotation() -> Float {return rotation}
    
    static func getWindBearing() -> Float {return windBearing}
    
    static func getPower() -> Float {return power}
    
    static func update() {
        rotation = Float(arc4random_uniform(629)) * 0.01
        windBearing = Float(arc4random_uniform(36000)) * 0.01
        power = rotation * wattsPerRadian
        
        history[index] = [rotation, windBearing, power]
        index += 1
    }
    
    static func getHistoryCount() -> Int {return history.count}
    
    static func getHistory(_ index: Int) -> [Float] {
        return history[index]!
    }
}
