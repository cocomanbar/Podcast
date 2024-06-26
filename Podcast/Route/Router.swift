//
//  Router.swift
//  Podcast
//
//  Created by tanxl on 2024/6/6.
//

import Foundation
import SwiftUI

/// 路由管理
final class Router: ObservableObject, NavigationDelegate {
    
    typealias Path = RoutePath
    @Published var path: [RoutePath] = []
    
    static let shared = Router()
    
    static func push(_ path: RoutePath) {
        self.shared.path.append(path)
    }
    
    static func popLast() {
        _ = self.shared.path.popLast()
    }
    
    static func popToRoot() {
        self.shared.path.removeAll()
    }
    
    static func pop(_ path: RoutePath?) {
        if let path = path {
            self.shared.path.removeAll { $0 == path }
        } else {
            popLast()
        }
    }
    
    // return false to stop
    static func popUntil(_ predicate: (RoutePath?) -> Bool) {
        while predicate(self.shared.path.last) {
            popLast()
        }
    }
    
    static func existPath(_ path: RoutePath?) -> Bool {
        guard let path = path else { return false }
        return self.shared.path.contains(path)
    }
    
    static func count() -> Int {
        self.shared.path.count
    }
}

