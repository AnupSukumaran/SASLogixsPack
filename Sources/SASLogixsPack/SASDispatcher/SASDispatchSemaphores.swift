//
//  File.swift
//  
//
//  Created by Manu Puthoor on 10/07/20.
//

import Foundation

public class SASDispatchSemephores {
    
    public static func set(comp: @escaping (_ semaphore: DispatchSemaphore) -> ()) {
        
        let semaphore = DispatchSemaphore(value: 0)
        
        SASDispatch.bgActionAsync {
            
            comp(semaphore)
            
            
        }
        
    }
}
