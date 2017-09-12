//
//  UIViewExtension.swift
//  StupidKit
//
//  Created by bmcc on 2017/9/12.
//  Copyright © 2017年 bmcc. All rights reserved.
//

import UIKit

public extension UIView {
    public var sk: StupidFrame {
        let sf = StupidFrame.init()
        sf.holdView = self
        return sf
    }    
}
