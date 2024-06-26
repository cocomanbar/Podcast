//
//  ListeningWithYouSectionView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/9.
//

import SwiftUI

struct ListeningWithYouSectionView: View {
    
    var list: [String] = ["马伯庸", "洪晃", "周奇墨", "程鲁豫", "梁文道"]
    
    var body: some View {
        HPaddingScrollView {
            HStack(spacing: Layout.viewHorizontalSpace, content: {
                ForEach(list, id: \.self) { title in
                    PostcastHostView(title: title)
                }
            })
        }
    }
}

#Preview {
    ListeningWithYouSectionView()
}
