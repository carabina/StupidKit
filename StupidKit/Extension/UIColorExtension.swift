//
//  UIColorExtension.swift
//  StupidKit
//
//  Created by bmcc on 2017/9/12.
//  Copyright © 2017年 bmcc. All rights reserved.
//

import UIKit

public extension UIColor {
    public static func sk_from(_ RGB: UInt, alpha: CGFloat) -> UIColor {
        let red = CGFloat((RGB & 0xff0000) >> 16) / 255.0
        let green = CGFloat((RGB & 0x00ff00) >> 8) / 255.0
        let blue = CGFloat(RGB & 0x0000ff) / 255.0
        return UIColor.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    public static func sk_from(_ RGB: UInt) -> UIColor {
        return UIColor.sk_from(RGB, alpha: 1.0)
    }
    
    public static var sk_random: UIColor {
        return UIColor.sk_from(UInt(arc4random()))
    }

}
