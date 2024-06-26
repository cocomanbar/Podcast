//
//  LeisureSectionView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/2.
//

import SwiftUI

struct LeisureSectionView: View {
    var body: some View {
        
        HPaddingScrollView {
            HStack(spacing: 24, content: {
                
                ForEach(0..<3) { _ in
                    VStack(alignment: .leading, spacing: 0, content: {
                        EpisodeCstCardView()
                            .frame(width: Layout.screenWidth - 120)
                        
                        Color.gray.opacity(0.5)
                            .frame(height: 0.2)
                            .padding(EdgeInsets(top: 16, bottom: 16))
                        
                        EpisodeCstCardView()
                            .frame(width: Layout.screenWidth - 120)
                        
                        Color.gray.opacity(0.5)
                            .frame(height: 0.2)
                            .padding(EdgeInsets(top: 16, bottom: 16))
                        
                        EpisodeCstCardView()
                            .frame(width: Layout.screenWidth - 120)
                    })
                }
            })
        }
    }
}

#Preview {
    LeisureSectionView()
}
