//
//  HotEpisodesSectionView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/8.
//

import SwiftUI

struct HotEpisodesSectionView: View {
    var body: some View {
        HPaddingScrollView {
            HStack(alignment: .top, spacing: 24, content: {
                HotEpisodesListView(list: [0, 1, 2])
                HotEpisodesListView(list: [3, 4, 5])
                HotEpisodesListView(list: [6, 7, 8])
            })
        }
    }
}

struct HotEpisodesListView: View {
    @State var list: [Int]
    
    var body: some View {
        VStack(spacing: 0, content: {
            ForEach(list, id: \.self) { index in
                VStack(content: {
                    EpisodeBstCardView(index: index + 1)
                        .padding(EdgeInsets(top: 15, bottom: 15))
                        .bottomLine(visible: index != list.last ? .visible : .hidden)
                })
            }
        })
    }
}

#Preview {
    HotEpisodesSectionView()
}
