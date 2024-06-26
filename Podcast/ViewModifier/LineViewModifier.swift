//
//  LineViewModifier.swift
//  Podcast
//
//  Created by tanxl on 2024/6/15.
//

import Foundation
import SwiftUI

extension View {
    
    func topLine(height: CGFloat = 0.3, color: Color = Color.gray.opacity(0.5), visible: LineViewModifier.Visibility = .visible) -> some View {
        self.modifier(LineViewModifier(onTop: true, height: height, color: color, visible: visible))
    }
    
    func bottomLine(height: CGFloat = 0.3, color: Color = Color.gray.opacity(0.5), visible: LineViewModifier.Visibility = .visible) -> some View {
        self.modifier(LineViewModifier(onTop: false, height: height, color: color, visible: visible))
    }
}

struct LineViewModifier: ViewModifier {
    
    enum Visibility {
        case visible
        case hidden
    }
    
    var onTop: Bool
    var height: CGFloat
    var color: Color
    var visible: Visibility
    init(onTop: Bool, height: CGFloat, color: Color, visible: Visibility) {
        self.onTop = onTop
        self.height = height
        self.color = color
        self.visible = visible
    }
    
    func body(content: Content) -> some View {
        VStack(alignment: .leading, spacing: 0) {
            if onTop {
                line()
            }
            content
            if !onTop {
                line()
            }
        }
    }
    
    func line() -> some View {
        (visible == .hidden ? Color.clear : color)
            .frame(height: visible == .hidden ? 0 : height)
    }
}
