//
//  File.swift
//  
//
//  Created by Manu Puthoor on 10/06/20.
//

import Foundation

public class SASDispatch {
    
    public static func bgActionAsync(comp: @escaping() -> ()) {
        DispatchQueue.global(qos: .background).async {
            
            comp()
    
        }
    }
    
    public static func async(comp: @escaping() -> ()) {
        DispatchQueue.main.async {
            comp()
        }
    }
}
