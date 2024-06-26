//
//  LibraryView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/1.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationStack {
            LibraryListView()
                .navigationTitle("资料库")
                .navigationBarTitleDisplayMode(.large)
                .navigationBarItems(trailing: Image(systemName: "ellipsis.circle.fill").foregroundColor(.purple))
        }
    }
}

struct LibraryListView: View {
    var body: some View {
        List {
            Group {
                Section {
                    LibraryFunctionView()
                        .padding(EdgeInsets(top: 0))
                } footer: {
                    Color.clear
                        .frame(height: 0)
                }
                
                SectionView(style: .title(title: "最近更新", more: false)) {
                    RecentlyUpdateSectionView()
                }
                
            }
            .listRowSeparator(.hidden)
            .listRowInsets(EdgeInsets())
        }
        .listStyle(.grouped)
        .background(Color.white)
        .scrollContentBackground(.hidden)
        .environment(\.defaultMinListRowHeight, 0)
        .environment(\.defaultMinListHeaderHeight, 0)
        .playerInset()
    }
}

#Preview {
    LibraryView()
}
