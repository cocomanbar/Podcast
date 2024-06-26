//
//  BrowseView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/1.
//

import SwiftUI

struct BrowseView: View {
    var body: some View {
        NavigationStack {
            BrowseListView()
                .navigationTitle("浏览")
                .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct BrowseListView: View {
    var body: some View {
        List {
            Group {
                Section {
                    CarefullySelectedSectionView()
                        .padding(EdgeInsets(top: 30))
                } footer: {
                    Color.clear
                        .frame(height: 0)
                }
                
                SectionView(style: .title(title: "新品推荐")) {
                    NewProductSectionView()
                }
                
                SectionView(style: .title(title: "热门节目")) {
                    PopularProgramsSectionView()
                }
                
                SectionView(style: .title(title: "热门单集")) {
                    HotEpisodesSectionView()
                }
                
                SectionView(style: .title(title: "探索更多", more: false)) {
                    ExploreMoreSectionView()
                }
                
                SectionView(style: .title(title: "如果你喜欢旅行")) {
                    TravelingRecommandSectionView()
                }
                
                SectionView(style: .title(title: "自我提升")) {
                    SelfImprovementSectionView()
                }
                
                SectionView(style: .title(title: "为新听众精选", more: false)) {
                    ExploreMoreSectionView()
                }
                
                SectionView(style: .title(title: "编辑精选节目")) {
                    EditSelectedProgramsSectionView()
                }
                
                SectionView(style: .title(title: "伴你收听", more: false)) {
                    ListeningWithYouSectionView()
                }
                
                SectionView(style: .title(title: "精选频道", more: false)) {
                    SelectedChannelsSectionView()
                }
                
                SectionView(style: .title(title: "各类别十大热门节目", more: false)) {
                    ClassesPopularProgramsSectionView()
                }
                
                SectionView(style: .title(title: "播客快速链接", more: false)) {
                    PodcastQuickLinksView()
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
    BrowseView()
}
