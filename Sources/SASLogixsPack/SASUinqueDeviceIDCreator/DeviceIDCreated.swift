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
   public static func getUUID() -> String? {

        // create a keychain helper instance
        let keychain = KeychainAccess()

        // this is the key we'll use to store the uuid in the keychain
        let uuidKey = "com.myorg.myappid.unique_uuid"

        // check if we already have a uuid stored, if so return it
        if let uuid = try? keychain.queryKeychainData(itemKey: uuidKey) {
            return uuid
        }

        // generate a new id
        guard let newId = UIDevice.current.identifierForVendor?.uuidString else {
            return nil
        }

        // store new identifier in keychain
        try? keychain.addKeychainData(itemKey: uuidKey, itemValue: newId)

        // return new id
        return newId
    }
}
