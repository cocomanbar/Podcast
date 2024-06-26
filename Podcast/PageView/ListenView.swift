//
//  ListenView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/1.
//

import SwiftUI

struct ListenView: View {
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        
        NavigationStack(root: {
            List(content: {
                
                Group {
                    
                    SectionView(style: .title(title: "待播清单"), vInset: EdgeInsets(top: 20, bottom: 15),
                                linkValue: RoutePath.episodeList(parameter: EpisodeListViewParameter(title: "待播清单"))) {
                        WaitingListenSectionView()
                    }
                    
                    SectionView(style: .titlePlus(title: "你可能还喜欢", subject: "基于收听内容"),
                                linkValue: RoutePath.podcastList(parameter: PodcastListViewParameter(title: "你可能还喜欢"))) {
                        MaybeLikeSectionView()
                    }
                    
                    SectionView(style: .title(title: "热门节目"),
                                linkValue: RoutePath.podcastList(parameter: PodcastListViewParameter(title: "热门节目"))) {
                        MaybeLikeSectionView()
                    }
                    
                    SectionView(style: .title(title: "休闲"),
                                linkValue: RoutePath.episodeList(parameter: EpisodeListViewParameter(title: "休闲", large: false))) {
                        LeisureSectionView()
                    }
                    
                    SectionView(style: .title(title: "编辑最爱"),
                                linkValue: RoutePath.podcastList(parameter: PodcastListViewParameter(title: "编辑最爱"))) {
                        EditLikeSectionView()
                    }
                    
                    SectionView(style: .titlePlus(title: "探索更多内容", subject: "基于收听内容"),
                                linkValue: RoutePath.episodeList(parameter: EpisodeListViewParameter(title: "探索更多内容", large: false))) {
                        LeisureSectionView()
                    }
                    
                    SectionView(style: .titleUltra(image: "", title: "三五环", subject: "猜你喜欢"),
                                linkValue: RoutePath.episodeDetail(parameter: EpisodeDetailViewParameter())) {
                        MaybeLikeSectionView()
                    }
                    
                    SectionView(style: .title(title: "必听内容"),
                                linkValue: RoutePath.podcastList(parameter: PodcastListViewParameter(title: "必听内容"))) {
                        MustListenSectionView()
                    }
                    
                    SectionView(style: .title(title: "最近播放"),
                                linkValue: RoutePath.episodeList(parameter: EpisodeListViewParameter(title: "最近播放"))) {
                        RecentlySectionView()
                    }
                }
                .listRowSeparator(.hidden)
                .listRowInsets(EdgeInsets())
            })
            .listStyle(.grouped)
            .background(Color.white)
            .scrollContentBackground(.hidden)
            .environment(\.defaultMinListRowHeight, 0)
            .environment(\.defaultMinListHeaderHeight, 0)
            .navigationTitle("现在就听")
            .navigationBarTitleDisplayMode(.large)
            .playerInset()
            .toolbar(content: {
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button(action: {
                        isPresented = !isPresented
                    }, label: {
                        Image(systemName: "person.crop.circle")
                            .imageScale(.large)
                            .foregroundColor(.black.opacity(0.9))
                    })
                }
            })
            .sheet(isPresented: $isPresented, content: {
                AccountView(disMiss: $isPresented)
            })
            .navigationDestination(for: RoutePath.self) { path in
                switch path {
                case let .episodeList(parameter):
                    EpisodeListView(parameter: parameter)
                case let .podcastList(parameter):
                    PodcastListView(parameter: parameter)
                case let .episodeDetail(parameter):
                    EpisodeDetailView(parameter: parameter)
                default:
                    Color.clear
                }
            }
        })
    }
}

#Preview {
    ListenView()
}
