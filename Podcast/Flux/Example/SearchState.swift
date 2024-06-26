//
//  SearchState.swift
//  Podcast
//
//  Created by tanxl on 2024/6/12.
//

import Foundation

struct SearchState: FluxState, FluxResult {
    
    var isEmpty: Bool = false
    var isLoading: Bool = true
    var isNetError: Bool = false
    var isDataError: Bool = false
    
    var searchList: [SearchListItem]
    
    init(list: [SearchListItem] = []) {
        searchList = list
    }
}
