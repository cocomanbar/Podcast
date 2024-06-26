//
//  ExEdgeInsets.swift
//  Podcast
//
//  Created by tanxl on 2024/6/2.
//

import Foundation
import SwiftUI

extension EdgeInsets {
    
    init(top: CGFloat? = 0, leading: CGFloat? = 0, bottom: CGFloat? = 0, trailing: CGFloat? = 0) {
        self.init()
        self.top = top ?? 0
        self.leading = leading ?? 0
        self.bottom = bottom ?? 0
        self.trailing = trailing ?? 0
    }
}
