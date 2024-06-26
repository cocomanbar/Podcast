//
//  MustListenSectionView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/2.
//

import SwiftUI

struct MustListenSectionView: View {
    var body: some View {
        
        HPaddingScrollView {
            HStack(spacing: Layout.viewHorizontalSpace, content: {
                PodcastFstCardView()
                PodcastFstCardView()
                PodcastFstCardView()
                PodcastFstCardView()
                PodcastFstCardView()
            })
        }
    }
}

#Preview {
    MustListenSectionView()
}
