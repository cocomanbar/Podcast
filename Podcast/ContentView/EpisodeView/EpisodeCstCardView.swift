//
//  EpisodeCstCardView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/12.
//

import SwiftUI

struct EpisodeCstCardView: View {
    
    var body: some View {
        HStack(alignment: .top, spacing: 0, content: {
            Color.cyan
                .frame(width: 100, height: 100)
                .cornerRadius(8.0)
                .padding(EdgeInsets(trailing: 12))
                .shadow(color: Color.gray.opacity(0.5), radius: 6, x: 4, y: 4)
                
            VStack(alignment: .leading, spacing: 0, content: {
                Text("5月22日")
                    .lineLimit(1)
                    .font(.system(size: 12))
                    .fontWeight(.regular)
                    .foregroundColor(.black.opacity(0.8))
                    .padding(EdgeInsets(top: 1))
                
                Text("vol.07 毕业两年收入八位数？探讨一个女孩如何正常")
                    .lineLimit(2)
                    .font(.system(size: 16))
                    .fontWeight(.medium)
                    .foregroundColor(.black.opacity(1.0))
                    .padding(EdgeInsets(top: 3))
                
                Spacer()
                
                HStack(alignment: .center, spacing: 0, content: {
                    
                    HStack(alignment: .center, spacing: 5, content: {
                        Image(systemName: "play.fill")
                            .fixedSize()
                            .foregroundColor(Color.purple)
                        Text("1小时11分钟")
                            .lineLimit(1)
                            .font(.system(size: 12))
                            .fontWeight(.regular)
                            .foregroundColor(.purple)
                    })
                    .padding(EdgeInsets(leading: 10, trailing: 10))
                    .frame(height: 30)
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(15)
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis")
                        .fixedSize()
                        .foregroundColor(.gray)
                })
                .padding(EdgeInsets(bottom: 3))
            })
            
        })
        .frame(height: 100)
        
    }
}


#Preview {
    EpisodeCstCardView()
}
