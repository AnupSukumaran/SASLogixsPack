//
//  SASAlert.swift
//  
//
//  Created by Sukumar Anup Sukumaran on 21/06/20.
//

import Foundation
import UIKit

public extension UIAlertController {
    

    func alertWithTF(title: String, msg: String, onView: UIViewController, alertStyle: UIAlertController.Style = .alert,  comp: @escaping (String) -> ()) {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: alertStyle)

        let saveAction = UIAlertAction(title: "Save", style: .default) { action in

            guard let textField = alert.textFields?.first, let stingToSave = textField.text else {
                return
            }
            comp(stingToSave)

        }

        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)

        alert.addTextField()
        alert.addAction(saveAction)
        alert.addAction(cancelAction)

        onView.present(alert, animated: true)
        
    }
    
}
