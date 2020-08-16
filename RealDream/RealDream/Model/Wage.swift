//
//  Wage.swift
//  RealDream
//
//  Created by ggg on 22.07.2020.
//  Copyright © 2020 anelapplab. All rights reserved.
//

import Foundation

//since we will write an Unit test for this getHours method, in the RHS settings, we should turn on the Tests accessability

class Wage {
    
    //by having class func-n, we don't have to create an instance of the Wage;
    //here two parameter names are used for convenience:
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        //round up:
        return Int(ceil(price / wage))
    }
}
