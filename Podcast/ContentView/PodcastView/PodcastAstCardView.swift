//
//  PodcastAstCardView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/12.
//

import SwiftUI

struct PodcastAstCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content: {
            Text("精选")
                .font(.system(size: 12))
                .foregroundColor(.black.opacity(0.8))
            Text("各领域运行爱好者相聚\n聊聊运动带来的一切")
                .lineLimit(2)
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(.black.opacity(1.0))
                .padding(EdgeInsets(top: 2, bottom: 10))
            Color.cyan
                .frame(width: 300, height: 200)
                .cornerRadius(8.0)
        })
    }
}

#Preview {
    PodcastAstCardView()
}
