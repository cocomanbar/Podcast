//
//  ViewModifier.swift
//  Podcast
//
//  Created by tanxl on 2024/6/15.
//

import Foundation
import SwiftUI

extension View {
    func playerInset(_ offset: CGFloat = Layout.homeListPaddingBottom) -> some View {
        self.modifier(PlayerInsetModifier(offset: offset))
    }
}

// 配置每一个页面的播放器偏移高度
struct PlayerInsetModifier: ViewModifier {
    
    var offset: CGFloat
    
    func body(content: Content) -> some View {
        return content
            .safeAreaInset(edge: .bottom) {
                Color.clear
                    .frame(height: Layout.homeListPaddingBottom)
            }
    }
}

