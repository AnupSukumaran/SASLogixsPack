//
//  DeviceIDCreated.swift
//  UUIDTest
//
//  Created by Manu Puthoor on 22/06/20.
//  Copyright © 2020 Manu Puthoor. All rights reserved.
//

import UIKit

public class DeviceIDCreated: NSObject {
    /// Creates a new unique user identifier or retrieves the last one created
    public static func getUUID(appID: String) -> String? {

        // create a keychain helper instance
        let keychain = KeychainAccess()

        // this is the key we'll use to store the uuid in the keychain
        let uuidKey = "\(appID).unique_uuid"
    
        var uuid: String?
    
        do {
            uuid = try keychain.queryKeychainData(itemKey: uuidKey)
            return uuid
        } catch _ {
        
            guard let newId = UIDevice.current.identifierForVendor?.uuidString else {
               return nil
            }

            // store new identifier in keychain
            try? keychain.addKeychainData(itemKey: uuidKey, itemValue: newId)

            // return new id
            return newId
            
        }
        
    }
}
