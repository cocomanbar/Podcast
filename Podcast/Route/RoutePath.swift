//
//  RoutePath.swift
//  Podcast
//
//  Created by tanxl on 2024/6/7.
//

import Foundation
import SwiftUI

// 导航路径
// Codable 数据缓存用来实现路由恢复功能，哪里划掉，哪里站起
enum RoutePath: Hashable, Codable {
    
    case login
    case account
    case notification
    case episodeList(parameter: EpisodeListViewParameter)
    case podcastList(parameter: PodcastListViewParameter)
    case episodeDetail(parameter: EpisodeDetailViewParameter)
    case testPath(String)
    
    // 页面映射关系
    var body: some View {
        switch self {
        case let .testPath(path):
            return Text(path)
        default:
            return Text("")
        }
    }
}
