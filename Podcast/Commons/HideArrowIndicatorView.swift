//
//  HideArrowIndicatorView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/11.
//

import SwiftUI

struct HideArrowIndicatorView<Content: View, Destination: View>: View {
    
    @ViewBuilder var content: () -> Content
    @ViewBuilder var destination: () -> Destination
    
    var body: some View {
        ZStack(alignment: .leading, content: {
            NavigationLink(destination: destination) {}
            content()
        })
    }
}
