//
//  PodcastEstCardView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/12.
//

import SwiftUI

struct PodcastEstCardView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            Color.purple
                .frame(width: 150, height: 150)
                .cornerRadius(16.0)
                .padding(EdgeInsets(top: 5))
            
            Text("这是一档由天弘基金出品的播客节目，带你用投资的视角解读世界。我们相信为生活而投资，投资")
                .lineLimit(3)
                .font(.system(size: 16))
                .foregroundColor(.white)
                .padding(EdgeInsets(top: 16))
            
            HStack(alignment: .center, spacing: 0, content: {
                Image(systemName: "star.fill")
                    .resizable()
                    .foregroundColor(.white.opacity(0.5))
                    .frame(width: 12, height: 12)
                    .scaledToFit()
                
                Text("3.2（68）• 投资")
                    .foregroundColor(.white.opacity(0.5))
                    .font(.system(size: 12))
                    .padding(EdgeInsets(leading: 4))
                
                Spacer()
            })
            .padding(EdgeInsets(top: 3, leading: 4))
            
            HStack(alignment: .center, spacing: 0, content: {
                
                HStack(alignment: .center, spacing: 0, content: {
                    Image(systemName: "play.fill")
                        .resizable()
                        .foregroundColor(.red.opacity(0.5))
                        .frame(width: 10, height: 12)
                        .scaledToFit()
                    
                    Text("预告")
                        .foregroundColor(.red.opacity(0.5))
                        .font(.system(size: 14))
                        .padding(EdgeInsets(leading: 5))
                })
                .frame(height: 30)
                .padding(EdgeInsets(leading: 10, trailing: 10))
                .background(Color.white)
                .cornerRadius(15)
                
                Spacer()
                
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .foregroundColor(.white.opacity(0.5))
                    .frame(width: 25, height: 25)
                    .scaledToFit()
            })
            .padding(EdgeInsets(top: 10, bottom: 5))
            
        })
        .padding()
        .frame(width: 250)
        .background(Color.red.opacity(0.8))
        .cornerRadius(16.0)
    }
}

#Preview {
    PodcastEstCardView()
}
