//
//  File.swift
//  
//
//  Created by Manu Puthoor on 10/06/20.
//

import Foundation

public class SASDispatchGrp {
    public static func setDispatchGrp(comp: @escaping (_ group: DispatchGroup) -> (), groupComp: @escaping () -> ()) {
        let group = DispatchGroup()
        comp(group)
        group.notify(queue: DispatchQueue.main) {
            groupComp()
        }
    }
}
