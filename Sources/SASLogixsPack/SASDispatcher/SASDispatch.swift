//
//  File.swift
//  
//
//  Created by Manu Puthoor on 10/06/20.
//

import Foundation

public class SASDispatch {
    
    // This is get things done at the background and also remember ui changes must be done on the main thread.
    public static func bgActionAsync(comp: @escaping() -> ()) {
        DispatchQueue.global(qos: .background).async {
            
            comp()
    
        }
    }
    
    //This is to do action on main thread like the UI changes
    public static func async(comp: @escaping() -> ()) {
        DispatchQueue.main.async {
            comp()
        }
    }
}
