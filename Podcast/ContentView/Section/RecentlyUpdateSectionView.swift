//
//  RecentlyUpdateSectionView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/9.
//

import SwiftUI

struct RecentlyUpdateSectionView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 18, content: {
            RecentlyUpdateLineView()
            RecentlyUpdateLineView()
        })
        .padding(EdgeInsets(leading: Layout.viewLeading, trailing: Layout.viewTrailing))
    }
}

struct RecentlyUpdateLineView: View {
    
    let spacing: CGFloat = 12
    var body: some View {
        HStack(alignment: .top, spacing: spacing, content: {
            PodcastCstCardView()
            PodcastCstCardView()
        })
    }
}

#Preview {
    RecentlyUpdateSectionView()
}
