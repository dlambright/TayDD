//
//  Model.swift
//  TayDD
//
//  Created by Charlie Buckets on 10/7/15.
//  Copyright © 2015 ChalieBuckets. All rights reserved.
//

import UIKit

class Model: NSObject {
     internal func getDistanceBetweenColors(color1: UIColor, color2: UIColor)->Float{
        
        let homeComponents = CGColorGetComponents(color1.CGColor)
        let homeTeamRed = homeComponents[0] * 255
        let homeTeamGreen = homeComponents[1] * 255
        let homeTeamBlue = homeComponents[2] * 255
        
        let awayComponents = CGColorGetComponents(color2.CGColor)
        let awayTeamRed = awayComponents[0] * 255
        let awayTeamGreen = awayComponents[1] * 255
        let awayTeamBlue = awayComponents[2] * 255
        
        let value = Float(sqrt(pow((homeTeamRed-awayTeamRed), 2.0) + pow((homeTeamGreen-awayTeamGreen), 2.0) + pow((homeTeamBlue-awayTeamBlue), 2.0)))

        return value
    }
}
