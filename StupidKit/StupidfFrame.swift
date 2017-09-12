//
//  StupidfFrame.swift
//  StupidKit
//
//  Created by bmcc on 2017/9/12.
//  Copyright © 2017年 bmcc. All rights reserved.
//

import Foundation

open class StupidFrame {
    weak var holdView: UIView!
    
    public var top: CGFloat {
        return holdView.frame.origin.y
    }
    
    public func top(_ value: CGFloat) -> StupidFrame {
        holdView.frame = CGRect.init(x: left, y: value, width: width, height: height)
        return self
    }
    
    public var bottom: CGFloat {
        return top + height
    }
    
    public func bottom(_ value: CGFloat) -> StupidFrame {
        holdView.frame = CGRect.init(x: left, y: value - height, width: width, height: height)
        return self
    }
    
    public var centerY: CGFloat {
        return top + height / 2
    }
    
    public func centerY(_ value: CGFloat) -> StupidFrame {
        holdView.frame = CGRect.init(x: left, y: value - height / 2, width: width, height: height)
        return self
    }
    
    public var left: CGFloat {
        return holdView.frame.origin.x
    }
    
    public func left(_ value: CGFloat) -> StupidFrame {
        holdView.frame = CGRect.init(x: value, y: top, width: width, height: height)
        return self
    }
    
    public var right: CGFloat {
        return left + width
    }
    
    public func right(_ value: CGFloat) -> StupidFrame {
        holdView.frame = CGRect.init(x: value - width, y: top, width: width, height: height)
        return self
    }
    
    public var centerX: CGFloat {
        return top + height / 2
    }
    
    public func centerX(_ value: CGFloat) -> StupidFrame {
        holdView.frame = CGRect.init(x: value - width / 2, y: top, width: width, height: height)
        return self
    }
    
    public var width: CGFloat {
        return holdView.frame.width
    }
    
    public func width(_ value: CGFloat) -> StupidFrame {
        holdView.frame = CGRect.init(x: left, y: top, width: value, height: height)
        return self
    }
    
    public var height: CGFloat {
        return holdView.frame.height
    }
    
    public func height(_ value: CGFloat) -> StupidFrame {
        holdView.frame = CGRect.init(x: left, y: top, width: width, height: value)
        return self
    }
    
    public func end() {}
}
