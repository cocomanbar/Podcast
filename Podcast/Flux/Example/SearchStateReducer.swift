//
//  SearchStateReducer.swift
//  Podcast
//
//  Created by tanxl on 2024/6/12.
//

import Foundation

struct SearchStateReducer: FluxReducer {
    typealias StateType = SearchState
    
    func reduce(state: SearchState, action: SearchAction) -> SearchState {
        var state = state
        switch action {
        case let .jump(id):
            break
        case let .jumpWeb(url):
            break
        }
        return state
    }
}
