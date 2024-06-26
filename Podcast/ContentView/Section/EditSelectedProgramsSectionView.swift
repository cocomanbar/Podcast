//
//  EditSelectedProgramsSectionView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/9.
//

import SwiftUI

struct EditSelectedProgramsSectionView: View {
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
    EditSelectedProgramsSectionView()
}
