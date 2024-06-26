//
//  LibraryFunctionView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/9.
//

import SwiftUI

struct LibraryFunctionView: View {
    
    var list: [[String: String]] = [
        ["title": "节目", "icon": "figure.run.square.stack"],
        ["title": "频道", "icon": "list.bullet"],
        ["title": "已存储", "icon": "bookmark"],
        ["title": "已下载", "icon": "arrow.down.circle"],
        ["title": "最新单集", "icon": "timer"],
    ]
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content: {
            ForEach(list, id: \.self) { json in
                
                HStack(alignment: .center, spacing: 16, content: {
                    Image(systemName: json["icon"] ?? "")
                        .foregroundColor(.purple)
                        .fixedSize()
                    
                    Text(json["title"] ?? "")
                        .font(.system(size: 20))
                        .fontWeight(.regular)
                        .foregroundColor(.black.opacity(0.8))
                    
                    Spacer()
                    
                    Image(systemName: "chevron.forward")
                        .foregroundColor(.gray.opacity(0.8))
                        .padding(EdgeInsets(trailing: Layout.viewTrailing))
                })
                .frame(height: 50)
                .topLine(visible: .visible)
                .bottomLine(visible: json == list.last ? .visible : .hidden)
            }
        })
        .padding(EdgeInsets(leading: Layout.viewLeading))
    }
}

#Preview {
    LibraryFunctionView()
}
