//
//  State.swift
//  Podcast
//
//  Created by tanxl on 2024/6/12.
//

import Foundation

protocol FluxState { }

protocol FluxResult {
    var isEmpty: Bool { get set }
    var isLoading: Bool { get set }
    var isNetError: Bool { get set }
    var isDataError: Bool { get set }
}

