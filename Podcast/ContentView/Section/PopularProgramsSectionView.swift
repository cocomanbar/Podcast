//
//  PopularProgramsSectionView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/8.
//

import SwiftUI

struct PopularProgramsSectionView: View {
    var body: some View {
        
        HPaddingScrollView {
            HStack(alignment: .top, spacing: 12, content: {
                ForEach(0..<5) { index in
                    PodcastBstCardView(index: index + 1)
                }
            })
        }
    }
}

#Preview {
    PopularProgramsSectionView()
}
