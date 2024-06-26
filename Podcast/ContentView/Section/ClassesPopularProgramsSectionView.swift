//
//  ClassesPopularProgramsSectionView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/9.
//

import SwiftUI

struct ClassesPopularProgramsSectionView: View {
    var list: [String] = ["体育",
                          "喜剧",
                          "健康与健身",
                          "电视与电影",
                          "社会与文化"]
    
    var body: some View {
        HPaddingScrollView {
            HStack(spacing: Layout.viewHorizontalSpace, content: {
                ForEach(list, id: \.self) { title in
                    ClassBstCardView(title: title)
                }
            })
        }
    }
}

#Preview {
    ClassesPopularProgramsSectionView()
}
