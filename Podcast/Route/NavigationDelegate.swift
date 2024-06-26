//
//  NavigationDelegate.swift
//  Podcast
//
//  Created by tanxl on 2024/6/7.
//

import Foundation

/// 导航协议
protocol NavigationDelegate {
    associatedtype Path
    
    static func push(_ path: Path)
    static func popLast()
    static func popToRoot()
    static func pop(_ path: Path?)
    static func popUntil(_ predicate: (Path?) -> Bool)
    static func existPath(_ path: Path?) -> Bool
}
