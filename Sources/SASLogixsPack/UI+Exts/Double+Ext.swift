//
//  File.swift
//  
//
//  Created by Manu Puthoor on 09/06/20.
//

import Foundation

public extension Double {
    
    /// Double To String Convertor with number of decimel points defined as parameter
    /// - Returns: Returns a string with decimal point
    func toDecimalsStr(_ decimalPointsRequired: Int = 2) -> String {
        return String(format: "%.\(decimalPointsRequired)f", ceil(self*100)/100)
    }
}
