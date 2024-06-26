//
//  SelectedChannelsSectionView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/9.
//

import SwiftUI

struct SelectedChannelsSectionView: View {
    var list: [String] = ["感受知识，发掘趣闻，传递经验。",
                          "在这里关注投资理财用户更好的生活，新手老手皆喜欢。",
                          "声音为翼，周游世界，思辨点亮求知之路。",
                          "日有所思，闲谈碎语，兴致使然聊天聊地。",
                          "感性对话，畅所欲言，真实展现内心体悟。"]
    
    var body: some View {
        HPaddingScrollView {
            HStack(spacing: Layout.viewHorizontalSpace, content: {
                ForEach(list, id: \.self) { title in
                    PostcastChannelView(title: title)
                }
            })
        }
    }
}

#Preview {
    SelectedChannelsSectionView()
}
