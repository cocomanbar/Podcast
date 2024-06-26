//
//  SearchAction.swift
//  Podcast
//
//  Created by tanxl on 2024/6/12.
//

import Foundation

enum SearchAction: FluxAction {
    case jump(id: String)
    case jumpWeb(url: String)
}
