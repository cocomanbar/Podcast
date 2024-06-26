//
//  EpisodeAstCardView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/12.
//

import SwiftUI

struct EpisodeAstCardView: View {
    
    @State var progressValue = 0.5
    
    var body: some View {
        VStack {
            Color.brown
                .frame(width: 150, height: 150)
                .cornerRadius(8.0)
            
            HStack(spacing: 0, content: {
                Text("新单集 • 1天前")
                Spacer()
            })
            .font(.system(size: 12,weight: .regular))
            .foregroundColor(.white.opacity(0.8))
            .padding(EdgeInsets(top: 5))
            
            HStack(spacing: 0, content: {
                Text("咖啡豆｜港人北上深圳「担货」，山姆为何不去香港开店？")
                    .lineLimit(2)
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(.white)
                Spacer()
            })
            .padding(EdgeInsets())
            
            HStack(spacing: 0, content: {
                Text("从去年下半年开始，「港人北上消失")
                    .lineLimit(1)
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(.white)
                Spacer()
            })
            
            
            HStack(spacing: 0, content: {
                HStack(spacing: 0, content: {
                    Image(systemName: "play.fill")
                        .fixedSize()
                        .foregroundColor(Color.brown)
                    ProgressView(value: progressValue)
                        .progressViewStyle(.linear)
                        .padding(EdgeInsets(leading: 5, trailing: 5))
                        .frame(width: 44)
                    Text("9分钟")
                        .lineLimit(2)
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(.brown)
                })
                .frame(height: 30)
                .padding(EdgeInsets(leading: 10, trailing: 10))
                .background(Color.white)
                .cornerRadius(15)
                
                Spacer()
                
                HStack(spacing: 0, content: {
                    Image(systemName: "arrow.down.circle.fill")
                        .fixedSize()
                        .foregroundColor(.white)
                        .padding(EdgeInsets(trailing: 15))
                    Image(systemName: "ellipsis")
                        .fixedSize()
                        .foregroundColor(.white)
                })
            })
        }
        .padding()
        .frame(width: 238, height: 315)
        .background(Color.cyan)
        .shadow(color: Color.gray.opacity(0.5), radius: 6, x: 4, y: 4)
        .cornerRadius(12)
    }
}

#Preview {
    EpisodeAstCardView()
}
