//
//  Color.swift
//  Simple App
//
//  Created by Jovan ho on 2020/9/22.
//  Copyright © 2020 Sydney Wu. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    static let colors: [UIColor] = [
        UIColor().colorFromHex("191308"),
        UIColor().colorFromHex("322A26"),
        UIColor().colorFromHex("454B66"),
        UIColor().colorFromHex("677DB7"),
        UIColor().colorFromHex("9CA3DB"),
        UIColor().colorFromHex("151E3F"),
        UIColor().colorFromHex("030027")
    ]
   
    
    func colorFromHex(_ hex: String) -> UIColor {
        
        var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if hexString.hasPrefix("#") {
            hexString.remove(at: hexString.startIndex)
        }
        
        if hexString.count != 6 {
            return UIColor.white
        }
        
        var rgb: UInt32 = 0
        
        Scanner(string: hexString).scanHexInt32(&rgb)
        
        
        return UIColor.init(red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
                            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
                            blue: CGFloat(rgb & 0x0000FF) / 255.0,
                            alpha: 1.0)
    }
}



    

