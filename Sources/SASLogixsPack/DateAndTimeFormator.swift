//
//  File.swift
//  
//
//  Created by Manu Puthoor on 27/08/20.
//

import Foundation

public class DTFormator {
    
    public static func convertDateFormater(_ date: String, from: String = "yyyy-MM-dd HH:mm:ss z", to: String = "dd-MM-yyyy") -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = from
        let date = dateFormatter.date(from: date)
        dateFormatter.dateFormat = to
        return  dateFormatter.string(from: date!)

    }
    
     public static func localToUTC(date:String, from: String = "h:mm a", to: String = "H:mm:ss") -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = from
        dateFormatter.calendar = NSCalendar.current
        dateFormatter.timeZone = TimeZone.current

        let dt = dateFormatter.date(from: date)
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        dateFormatter.dateFormat = to

        return dateFormatter.string(from: dt!)
    }

     public static func UTCToLocal(date:String?, from: String = "yyyy-MM-dd HH:mm:ss", to: String = "dd-MM-yyyy h:mm a") -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = from
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")

        let dt = dateFormatter.date(from: date ?? "")
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.dateFormat = to
        guard let newDate = dt else {return nil}
        return dateFormatter.string(from: newDate)
    }
    
    
    
}
