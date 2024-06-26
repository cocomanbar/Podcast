//
//  EpisodeBstCardView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/12.
//

import SwiftUI

struct EpisodeBstCardView: View {
    @State var index: Int
    
    var body: some View {
        HStack(alignment: .center, spacing: 0, content: {
            
            GeometryReader(content: { geometry in
                Color.cyan
                    .frame(width: geometry.size.height, height: geometry.size.height)
            })
            .background(Color.gray)
            .cornerRadius(6.0)
            .scaledToFit()
            
            Text("\(index)")
                .font(.system(size: 16))
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding(EdgeInsets(leading: 15, trailing: 15))
            
            VStack(alignment: .leading, spacing: 0, content: {
                
                Text("咖啡豆 | 单张价格上涨近一半，拍立得相纸去年销售涨幅")
                    .lineLimit(2)
                    .font(.system(size: 16))
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                
                Text("5天钱 • 1小时13分钟")
                    .lineLimit(1)
                    .font(.system(size: 14))
                    .fontWeight(.regular)
                    .foregroundColor(.black.opacity(0.6))
                    .padding(EdgeInsets(top: 5))
            })
            
            Spacer()
            
            Image(systemName: "ellipsis")
                .fixedSize()
                .foregroundColor(.gray)
            
            Spacer()
        })
        .frame(width: 300, height: 80)
    }
}

#Preview {
    EpisodeBstCardView(index: 0)
}
