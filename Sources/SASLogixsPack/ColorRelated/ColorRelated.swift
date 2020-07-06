//
//  File.swift
//  
//
//  Created by Manu Puthoor on 06/07/20.
//

import UIKit

public extension UIColor {
    func isLight() -> Bool
    {
        //Color brightness is determined by the following formula:
       // ((Red value X 299) + (Green value X 587) + (Blue value X 114)) / 1000
      //  Note: This algorithm is taken from a formula for converting RGB values to YIQ values. This brightness value gives a perceived brightness for a color.
        //Color difference is determined by the following formula:
       // (maximum (Red value 1, Red value 2) - minimum (Red value 1, Red value 2)) + (maximum (Green value 1, Green value 2) - minimum (Green value 1, Green value 2)) + (maximum (Blue value 1, Blue value 2) - minimum (Blue value 1, Blue value 2))
        // algorithm from: http://www.w3.org/WAI/ER/WD-AERT/#color-contrast
        guard let components = self.cgColor.components else {return false}
        let ss = (components[0] * 299) + (components[1] * 587) + (components[2] * 114)
        let brightness = ss/1000

        if brightness < 0.5 {
            return false
        } else {
            return true
        }
    }
}

public extension UIImage {
    
    func isLightColoredImg(pos: CGPoint) -> Bool {
        return self.getPixelColor(pos: pos).isLight()
    }
    
    func getPixelColor(pos: CGPoint) -> UIColor {

           let pixelData = self.cgImage!.dataProvider!.data
           let data: UnsafePointer<UInt8> = CFDataGetBytePtr(pixelData)

           let pixelInfo: Int = ((Int(self.size.width) * Int(pos.y)) + Int(pos.x)) * 4

           let r = CGFloat(data[pixelInfo]) / CGFloat(255.0)
           let g = CGFloat(data[pixelInfo+1]) / CGFloat(255.0)
           let b = CGFloat(data[pixelInfo+2]) / CGFloat(255.0)
           let a = CGFloat(data[pixelInfo+3]) / CGFloat(255.0)
        

           return UIColor(red: r, green: g, blue: b, alpha: a)
       }
}
