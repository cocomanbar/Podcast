//
//  PodcastDstCardView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/12.
//

import SwiftUI

struct PodcastDstCardView: View {
    
    enum UIStyle {
        case small
        case middle
        
        var width: CGFloat {
            switch self {
            case .middle:
                return UIStyle.middleWidth
            case .small:
                return UIStyle.smallWidth
            }
        }
        
        static let space: CGFloat = 18
        static let smallWidth: CGFloat = (Layout.screenWidth - Layout.viewLeading - space * 2) / 9.0 * 4
        static let middleWidth: CGFloat = (Layout.screenWidth - Layout.viewLeading - Layout.viewTrailing - space) / 2
    }
    
    var widthStyle: UIStyle = .small
    
    var body: some View {
        
        VStack(alignment: .leading, content: {
            GeometryReader(content: { geometry in
                Color.brown
                    .frame(width: geometry.size.width, height: geometry.size.width)
                    .cornerRadius(8.0)
            })
            .scaledToFit()
            
            Text("社会与文化")
                .lineLimit(1)
                .font(.system(size: 16,weight: .regular))
                .foregroundColor(.black.opacity(0.8))
            
            Text("一周一更")
                .lineLimit(1)
                .font(.system(size: 16, weight: .regular))
                .foregroundColor(.black.opacity(0.4))
        })
        .padding(EdgeInsets())
        .background(Color.white)
        .frame(width: widthStyle.width)
    }
}

#Preview {
    PodcastDstCardView()
}
