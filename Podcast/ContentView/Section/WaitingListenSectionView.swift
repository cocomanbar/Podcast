//
//  WaitingListenSectionView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/2.
//

import SwiftUI

struct WaitingListenSectionView: View {
    
    var body: some View {
        
        HPaddingScrollView {
            HStack(spacing: Layout.viewHorizontalSpace, content: {
                EpisodeAstCardView()
                EpisodeAstCardView()
                EpisodeAstCardView()
            })
        }
    }
}

#Preview {
    WaitingListenSectionView()
}
