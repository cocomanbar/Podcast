//
//  Reducer.swift
//  Podcast
//
//  Created by tanxl on 2024/6/12.
//

import Foundation

protocol FluxReducer {
    associatedtype StateType: FluxState
    associatedtype StateAction: FluxAction
    func reduce(state: StateType, action: StateAction) -> StateType
}
