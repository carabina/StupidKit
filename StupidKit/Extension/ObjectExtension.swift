//
//  ObjectExtension.swift
//  StupidKit
//
//  Created by bmcc on 2017/9/12.
//  Copyright © 2017年 bmcc. All rights reserved.
//

import Foundation

public extension NSObject {
    public static var sk_className: String {
        let allClassName = self.description()
        let arr = allClassName.components(separatedBy: ".")
        let className = arr.last!
        return className
    }
    
    public var sk_className: String {
        let theClass = type(of: self)
        let className = String(describing: theClass)
        return className
    }
}

