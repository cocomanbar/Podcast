//
//  PostcastChannelView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/12.
//

import SwiftUI

struct PostcastChannelView: View {
    
    var title: String
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content: {
            
            Color.purple
            
            ZStack(alignment: .center, content: {
                
                Color.blue
                    .opacity(0.5)
                    .frame(height: 100)
                
                Text(title)
                    .font(.system(size: 16))
                    .lineSpacing(3.0)
                    .foregroundColor(.white)
                    .lineLimit(2)
                    .padding()
            })
        })
        .frame(width: 240, height: 300)
        .cornerRadius(12.0)
    }
}

#Preview {
    PostcastChannelView(title: "挖哈哈")
}
