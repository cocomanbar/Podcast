//
//  View.swift
//  Podcast
//
//  Created by tanxl on 2024/6/7.
//

import Foundation
import SwiftUI

struct SearchView1: View {
    var body: some View {
        Text("Hello, World!")
            .pathDestination { path in
                switch path {
                case let .testPath(path):
                    Text(path)
                default:
                    path.body
                }
            }
    }
}

extension View {
    
    /// 通用路由处理策略
    func pathDestination() -> some View {
        navigationDestination(for: RoutePath.self) { $0.body }
    }
    
    /// 增强版通用路由处理策略
    func pathDestination(@ViewBuilder destination: @escaping (_ path: RoutePath) -> some View) -> some View {
        navigationDestination(for: RoutePath.self) { destination($0) }
    }
}
