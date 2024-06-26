//
//  ExploreMoreSectionView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/8.
//

import SwiftUI

struct ExploreMoreSectionView: View {
    
    var list: [String] = ["体育", "科学", "喜剧", "休闲", "社会与文化", "小说", "商务", "英语播客"]
    
    var body: some View {
        HPaddingScrollView {
            HStack(alignment: .top, spacing: 12, content: {
                ForEach(list, id: \.self) { title in
                    ClassAstCardView(title: title)
                }
            })
        }
    }
}

#Preview {
    ExploreMoreSectionView()
}
