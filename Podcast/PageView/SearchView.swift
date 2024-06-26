//
//  SearchView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/1.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationStack {
            SearchListView()
                .navigationTitle("搜索")
                .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct SearchListView: View {
    var body: some View {
        List {
            Section {
                SearchBar()
                
                SearchModuleView()
                    .padding(EdgeInsets(top: 20))
                
                SearchTipView()
                    .padding(EdgeInsets(top: 20))
            }
            .listRowSeparator(.hidden)
            .listRowInsets(EdgeInsets())
            .padding(EdgeInsets(leading: Layout.viewLeading, trailing: Layout.viewTrailing))
        }
        .listStyle(.plain)
        .background(Color.white)
        .scrollContentBackground(.hidden)
        .playerInset()
    }
}

struct SearchBar: View {
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {
            Color.gray
                .opacity(0.15)
                .cornerRadius(8.0)
            
            HStack(alignment: .center, spacing: 5, content: {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray.opacity(0.8))
                
                Text("节目和单集等")
                    .font(.system(size: 14))
                    .foregroundColor(.gray.opacity(0.8))
            })
            .padding(EdgeInsets(leading: 10))
        })
        .frame(height: 40)
    }
}

struct SearchModuleView: View {
    
    var body: some View {
        
        ScrollView(.vertical) {
            VStack(alignment: .leading, spacing: 12, content: {
                ForEach(0..<10) { index in
                    HStack(alignment: .center, spacing: 12, content: {
                        Group {
                            ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom), content: {
                                Color.cyan
                                    .frame(height: 100)
                                
                                Text("排行榜")
                                    .padding()
                                    .fontWeight(.medium)
                                    .foregroundColor(.white)
                            })
                            ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom), content: {
                                Color.cyan
                                    .frame(height: 100)
                                
                                Text("排行榜")
                                    .padding()
                                    .fontWeight(.medium)
                                    .foregroundColor(.white)
                            })
                        }
                        .cornerRadius(8.0)
                    })
                }
            })
        }
    }
}

struct SearchTipView: View {
    
    var body: some View {
        Text("进一步了解搜索结果")
            .foregroundColor(.purple)
    }
}

#Preview {
    SearchView()
}
