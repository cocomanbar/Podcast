//
//  MaybeLikeSectionView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/2.
//

import SwiftUI

struct MaybeLikeSectionView: View {
    
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
    MaybeLikeSectionView()
}
