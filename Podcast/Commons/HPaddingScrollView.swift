//
//  HPaddingScrollView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/5.
//

import SwiftUI

struct HPaddingScrollView<Content: View>: View {
    
    var scrollIndicators: ScrollIndicatorVisibility = .hidden
    var leading: CGFloat = Layout.viewLeading
    var trailing: CGFloat = Layout.viewTrailing
    @ViewBuilder var content: () -> Content
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 0, content: {
                Color.clear
                    .frame(width: leading)
                content()
                Color.clear
                    .frame(width: trailing)
            })
        }
        .scrollIndicators(scrollIndicators)
    }
}

#Preview {
    HPaddingScrollView(scrollIndicators: .hidden, leading: 0, trailing: 0) {
        EpisodeAstCardView()
        EpisodeAstCardView()
        EpisodeAstCardView()
    }
}
