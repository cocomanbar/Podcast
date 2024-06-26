//
//  BodyView.swift
//  Podcast
//
//  Created by tanxl on 2024/5/31.
//

import SwiftUI

enum TabType: String, CaseIterable {
    case listen
    case browse
    case library
    case search
    
    var title: String {
        switch self {
        case .listen:
            return "现在就听"
        case .browse:
            return "浏览"
        case .library:
            return "资料库"
        case .search:
            return "搜索"
        }
    }
    
    var image: String {
        switch self {
        case .listen:
            return "play.circle.fill"
        case .browse:
            return "circle.grid.cross.fill"
        case .library:
            return "figure.run.square.stack.fill"
        case .search:
            return "magnifyingglass"
        }
    }
}

struct BodyView: View {
    
    @State var selectedType: TabType = .listen
    
    var body: some View {
        
        TabView(selection: $selectedType) {
            
            HomeListView {
                ListenView()
            }
            .tag(TabType.listen)
            .tabItem {
                Image(systemName: TabType.listen.image)
                Text(TabType.listen.title)
            }
            
            HomeListView {
                BrowseView()
            }
            .tag(TabType.browse)
            .tabItem {
                Image(systemName: TabType.browse.image)
                Text(TabType.browse.title)
            }
            
            HomeListView {
                LibraryView()
            }
            .tag(TabType.library)
            .tabItem {
                Image(systemName: TabType.library.image)
                Text(TabType.library.title)
            }
            
            HomeListView {
                SearchView()
            }
            .tag(TabType.search)
            .tabItem {
                Image(systemName: TabType.search.image)
                Text(TabType.search.title)
            }
        }
        .tint(.purple)
        .onAppear(perform: {
            UITabBar.appearance().unselectedItemTintColor = .systemBrown
            UITabBar.appearance().backgroundColor = .white
            
            UITabBarItem.appearance().titlePositionAdjustment = UIOffset(horizontal: 0, vertical: 3)
            UITabBarItem.appearance().badgeColor = .purple.withAlphaComponent(0.5)
            
            UITableView.appearance().separatorStyle = .none
            UITableView.appearance().separatorColor = .clear
            UITableView.appearance().sectionHeaderTopPadding = 0
            UITableView.appearance().sectionHeaderHeight = 0
            UITableView.appearance().sectionFooterHeight = 0
        })
    }
}

#Preview {
    BodyView()
}
