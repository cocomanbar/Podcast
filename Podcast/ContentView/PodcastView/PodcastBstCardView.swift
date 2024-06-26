//
//  PodcastBstCardView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/12.
//

import SwiftUI

struct PodcastBstCardView: View {
    
    @State var index: Int
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0, content: {
            Color.cyan
                .frame(height: 150)
                .cornerRadius(10.0)
            
            Text("\(index)")
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(.black)
                .padding(EdgeInsets(top: 10))
            
            Text("搞钱女孩 | 女性成长之路")
                .lineLimit(1)
                .font(.system(size: 16))
                .fontWeight(.regular)
                .foregroundColor(.black)
                .padding(EdgeInsets(top: 5))
            
            Text("搞钱女孩创始人小慧")
                .lineLimit(1)
                .font(.system(size: 14))
                .fontWeight(.regular)
                .foregroundColor(.black.opacity(0.6))
                .padding(EdgeInsets(top: 3))
        })
        .frame(width: 150)
    }
}

#Preview {
    PodcastBstCardView(index: 0)
}
