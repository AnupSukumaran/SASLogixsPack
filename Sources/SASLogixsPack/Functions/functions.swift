//
//  File.swift
//  
//
//  Created by Manu Puthoor on 26/08/20.
//

import Foundation

public typealias OJSON = [String : Any?]

public extension OJSON {

    func asCacheID() -> String {

        var sortedVals: String = ""

        for k in self.keys.sorted() {
            guard let value = self[k], let v = value else { break }
            sortedVals += "\(v)"
        }

        return sortedVals
    }
}


