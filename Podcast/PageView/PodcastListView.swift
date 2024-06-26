//
//  PodcastListView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/13.
//

import SwiftUI

struct PodcastListViewParameter: Hashable, Codable {
    let title: String
    
    init(title: String = "") {
        self.title = title
    }
}

struct PodcastListView: View {
    
    let parameter: PodcastListViewParameter
    init(parameter: PodcastListViewParameter) {
        self.parameter = parameter
    }
    
    var body: some View {
        ScrollView(content: {
            
            Color.clear
                .frame(height: 12)
            
            // 废物控件
            LazyVGrid(columns: [GridItem(.fixed(PodcastDstCardView.UIStyle.middle.width)),
                                GridItem(.fixed(PodcastDstCardView.UIStyle.middle.width))], content: {
                ForEach(0..<20, id: \.self) { _ in
                    PodcastDstCardView(widthStyle: .middle)
                }
            })
        })
        .navigationTitle(parameter.title)
        .navigationBarTitleDisplayMode(.inline)
        .background(Color.white)
        .scrollContentBackground(.hidden)
        .playerInset()
    }
}

#Preview {
    NavigationStack {
        PodcastListView(parameter: PodcastListViewParameter())
    }
}
