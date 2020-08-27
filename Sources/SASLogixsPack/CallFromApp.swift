//
//  File.swift
//  
//
//  Created by Manu Puthoor on 27/08/20.
//

import Foundation
import UIKit

public class CallFromApp {
    
    public static func with(tel_Num: String) {
        let newNumber = tel_Num.replacingOccurrences(of: " ", with: "")
        guard let url = URL(string: "tel://\(newNumber)"), UIApplication.shared.canOpenURL(url) else {fatalError("🧲 Cannot make a call from app -SASLogixPack")}
        
       if #available(iOS 10, *) {
           UIApplication.shared.open(url)
       } else {
           UIApplication.shared.openURL(url)
       }
        

    }
}
