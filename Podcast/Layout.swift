//
//  Layout.swift
//  Podcast
//
//  Created by tanxl on 2024/6/2.
//

import Foundation
import SwiftUI

struct Layout {
    // 标准间距
    static let viewLeading: CGFloat = 18
    static let viewTrailing: CGFloat = 18
    
    static let defaultEdge: EdgeInsets = EdgeInsets(leading: Layout.viewLeading, trailing: Layout.viewTrailing)
    
    // item horizatial space
    static let viewHorizontalSpace: CGFloat = 12
    
    // 列表间距
    static let listInset: EdgeInsets = EdgeInsets(top: 0, leading: viewLeading, bottom: 0, trailing: viewTrailing)
    
    // row间距
    static let listRowInset: EdgeInsets = EdgeInsets(top: 0, leading: viewLeading, bottom: 0, trailing: viewTrailing)
    
    // 播放器高度
    static let homePlayHeight: CGFloat = 70
    
    // 列表底部空置
    static let homeListPaddingBottom: CGFloat = homePlayHeight + 10
    
    static let screenBounds: CGRect = UIScreen.main.bounds
    static let screenWidth: CGFloat = UIScreen.main.bounds.width
    static let screenHeight: CGFloat = UIScreen.main.bounds.height
    
    // 导航栏内容
    static let statusBarHeight: CGFloat = Layout().NAV_STATUSBAR_HEIGHT()
    static let bottomSafeHeight: CGFloat = Layout().TABBAR_INDICATOR_HEIGHT()
    
    static let navBarContentHeight: CGFloat = 44
    static let tabBarContentHeight: CGFloat = 49
    static let navBarHeight: CGFloat = navBarContentHeight + statusBarHeight
    static let tabBarHeight: CGFloat = tabBarContentHeight + bottomSafeHeight
    
    // 状态栏高度
    private func NAV_STATUSBAR_HEIGHT() -> CGFloat {
        if #available(iOS 13.0, *) {
            return keyWindow()?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
        } else {
            return UIApplication.shared.statusBarFrame.height
        }
    }
    
    // 底部安全间距
    private func TABBAR_INDICATOR_HEIGHT() -> CGFloat {
        if #available(iOS 11.0, *) {
            return keyWindow()?.safeAreaInsets.bottom ?? 0
        } else {
            return 0
        }
    }
    
    // 获取window
    private func keyWindow() -> UIWindow? {
        if #available(iOS 13.0, *) {
            let winScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
            return winScene?.windows.first
        } else {
            return UIApplication.shared.delegate?.window ?? UIApplication.shared.keyWindow
        }
    }
}
