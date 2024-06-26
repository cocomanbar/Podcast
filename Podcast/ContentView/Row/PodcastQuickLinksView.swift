//
//  PodcastQuickLinksView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/9.
//

import SwiftUI

struct PodcastQuickLinksView: View {
    
    var list: [String] = ["按类型浏览",
                          "排行榜",
                          "创作者专区"]
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content: {
            ForEach(list, id: \.self) { text in
                Text(text)
                    .font(.system(size: 18))
                    .foregroundColor(.purple)
                    .padding()
                    .bottomLine(visible: text == list.last ? .hidden : .visible)
            }
        })
        .padding(EdgeInsets(leading: Layout.viewLeading, trailing: Layout.viewTrailing))
    }
}

#Preview {
    PodcastQuickLinksView()
}
