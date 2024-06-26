//
//  RecentlySectionView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/3.
//

import SwiftUI

struct RecentlySectionView: View {
    var body: some View {
        
        HPaddingScrollView {
            HStack(spacing: 24, content: {
                Group {
                    EpisodeCstCardView()
                    EpisodeCstCardView()
                    EpisodeCstCardView()
                }
                .frame(width: Layout.screenWidth - 120)
            })
        }
    }
}

#Preview {
    RecentlySectionView()
}
