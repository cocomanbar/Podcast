//
//  NewProductSectionView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/8.
//

import SwiftUI

struct NewProductSectionView: View {
    var body: some View {
        
        HPaddingScrollView {
            HStack(alignment: .top, spacing: 12, content: {
                VStack(alignment: .leading, spacing: 12, content: {
                    PodcastDstCardView()
                    PodcastDstCardView()
                })
                VStack(alignment: .leading, spacing: 12, content: {
                    PodcastDstCardView()
                    PodcastDstCardView()
                })
                VStack(alignment: .leading, spacing: 12, content: {
                    PodcastDstCardView()
                    PodcastDstCardView()
                })
                VStack(alignment: .leading, spacing: 12, content: {
                    PodcastDstCardView()
                    PodcastDstCardView()
                })
            })
        }
    }
}

#Preview {
    NewProductSectionView()
}
