//
//  File.swift
//  
//
//  Created by Manu Puthoor on 27/08/20.
//

import Foundation
import UIKit
import MessageUI

public class SendEmailTo {
    
    public static func sendEmail(emailTXTs: [String], emailBody: String, asHTML: Bool = false, delegate: MFMailComposeViewControllerDelegate, handler: ((_ mail: MFMailComposeViewController) -> ())?) {
        
        guard MFMailComposeViewController.canSendMail() else { fatalError("🧲Can not call MFMailComposeViewController from SASLogixPack") }
        
        let mail = MFMailComposeViewController()
        mail.mailComposeDelegate = delegate
        mail.setToRecipients(emailTXTs)
        
        if asHTML {
            mail.setMessageBody("<p>\(emailBody)<p>", isHTML: asHTML)
        } else {
            mail.setMessageBody("\(emailBody)", isHTML: asHTML)
        }
        handler?(mail)
        
    }
    
    //MARK:
   public static func callEmailAction(_ emailString:  String) {
        if let url = URL(string: "mailto:\(emailString)") {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(url)
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }
}
