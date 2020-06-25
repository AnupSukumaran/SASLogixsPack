//
//  File.swift
//  
//
//  Created by Manu Puthoor on 25/06/20.
//

import Foundation

public class SASEqs {
    
    public static func aveg(_ arrVal: [Int]) -> Double {
        return Double(arrVal.reduce(0,+))/Double(arrVal.count)
    }
    

    public static func roundDouble(d: Double, decimalPoint: Int) -> Double {
        let ss = (0..<decimalPoint).reduce(1) { (x, _) -> Int in return x * 10}
        return Double(round(Double(ss) * d) / Double(ss))
    }
    
}
