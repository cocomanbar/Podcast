//
//  PodcastCstCardView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/12.
//

import SwiftUI

struct PodcastCstCardView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content: {
            Color.cyan
                .scaledToFit()
                .cornerRadius(8.0)
            
            Text("声动早咖啡")
                .lineLimit(1)
                .padding(EdgeInsets(top: 10))
                .foregroundColor(.black)
            
            Text("更新于2天前")
                .lineLimit(1)
                .padding(EdgeInsets(top: 2))
                .foregroundColor(.black.opacity(0.5))
        })
    }
}

#Preview {
    PodcastCstCardView()
}

