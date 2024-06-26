//
//  SearchViewModel.swift
//  Podcast
//
//  Created by tanxl on 2024/6/12.
//

import Foundation
import SwiftUI
import Combine

final class SearchViewModel: ObservableObject {
    
    var objectWillChange = PassthroughSubject<SearchViewModel, Never>()
    
    var searchState: SearchState
    
    init(state: SearchState) {
        searchState = state
    }
    
    func dispatch(action: SearchAction) {
        searchState = SearchStateReducer().reduce(state: searchState, action: action)
        objectWillChange.send(self)
    }
}
