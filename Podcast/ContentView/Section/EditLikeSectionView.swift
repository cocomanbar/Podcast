//
//  EditLikeSectionView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/2.
//

import SwiftUI

struct EditLikeSectionView: View {
    var body: some View {
        
        HPaddingScrollView {
            HStack(spacing: Layout.viewHorizontalSpace, content: {
                PodcastEstCardView()
                PodcastEstCardView()
                PodcastEstCardView()
                PodcastEstCardView()
                PodcastEstCardView()
            })
        }
    }
}

#Preview {
    EditLikeSectionView()
}
