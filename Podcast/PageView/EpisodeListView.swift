//
//  EpisodeListView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/12.
//

import SwiftUI

struct EpisodeListViewParameter: Hashable, Codable {
    let title: String
    let large: Bool
    
    init(title: String = "", large: Bool = true) {
        self.title = title
        self.large = large
    }
}

struct EpisodeListView: View {
    
    let parameter: EpisodeListViewParameter
    init(parameter: EpisodeListViewParameter) {
        self.parameter = parameter
    }
    
    var body: some View {
        List {
            ForEach(0..<10) { _ in
                EpisodeCstCardView()
                    .padding()
                    .topLine()
            }
            .listRowInsets(EdgeInsets())
            .listRowSeparator(.hidden)
        }
        .navigationTitle(parameter.title)
        .navigationBarTitleDisplayMode(parameter.large ? .large : .inline)
        .listStyle(.grouped)
        .background(Color.white)
        .scrollContentBackground(.hidden)
        .playerInset()
        .environment(\.defaultMinListRowHeight, 0)
        .environment(\.defaultMinListHeaderHeight, 0)
    }
}

#Preview {
    NavigationStack {
        EpisodeListView(parameter: EpisodeListViewParameter())
    }
}
