//
//  ThreadExtension.swift
//  StupidKit
//
//  Created by bmcc on 2017/9/12.
//  Copyright © 2017年 bmcc. All rights reserved.
//

import Foundation

public extension DispatchQueue {
    private static var onceToken: [String] = []
    public static func sk_once(_ token: String, closure: () -> Void) {
        objc_sync_enter(self)
        defer {
            objc_sync_exit(self)
        }
        if onceToken.contains(token) {
            return
        }
        onceToken.append(token)
        closure()
    }
}
