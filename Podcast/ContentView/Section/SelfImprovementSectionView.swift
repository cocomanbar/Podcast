//
//  SelfImprovementSectionView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/9.
//

import SwiftUI

struct SelfImprovementSectionView: View {
    var body: some View {
        HPaddingScrollView {
            HStack(spacing: Layout.viewHorizontalSpace, content: {
                PodcastDstCardView()
                PodcastDstCardView()
                PodcastDstCardView()
            })
        }
    }
}

#Preview {
    SelfImprovementSectionView()
}
