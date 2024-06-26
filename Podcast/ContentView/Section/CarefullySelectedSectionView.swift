//
//  CarefullySelectedSectionView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/8.
//

import SwiftUI

struct CarefullySelectedSectionView: View {
    var body: some View {
        
        HPaddingScrollView {
            HStack(alignment: .center, spacing: 12, content: {
                PodcastAstCardView()
                PodcastAstCardView()
                PodcastAstCardView()
            })
        }
    }
}

#Preview {
    CarefullySelectedSectionView()
}
