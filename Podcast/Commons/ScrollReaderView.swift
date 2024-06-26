//
//  ScrollReaderView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/4.
//

import SwiftUI

/// 通过包裹ScrollView 获取当前内容的滚动偏移值
/// 被包裹的 `content`不能是列表等可滚动视图
struct OffsetObservingScrollView<Content: View>: View {
    
    var axes: Axis.Set = .vertical
    var showsIndicators: Bool = true
    @Binding var offset: CGPoint
    @ViewBuilder var content: () -> Content
    
    private let coordinateSpaceName = UUID()
    
    var body: some View {
        ScrollView(axes, showsIndicators: showsIndicators) {
            PositionObservingView(
                coordinateSpace: .named(coordinateSpaceName),
                position: Binding(
                    get: { offset },
                    set: { newOffset in
                        offset = CGPoint(
                            x: newOffset.x,
                            y: newOffset.y
                        )
                    }
                ),
                content: content
            )
        }
        .coordinateSpace(name: coordinateSpaceName)
    }
}

private struct PositionObservingView<Content: View>: View {
    var coordinateSpace: CoordinateSpace
    @Binding var position: CGPoint
    @ViewBuilder var content: () -> Content
    
    var body: some View {
        content()
            .background(GeometryReader { geometry in
                Color.clear.preference(
                    key: PreferenceKey.self,
                    value: geometry.frame(in: coordinateSpace).origin
                )
            })
            .onPreferenceChange(PreferenceKey.self) { position in
                self.position = position
            }
    }
}

private extension PositionObservingView {
    enum PreferenceKey: SwiftUI.PreferenceKey {
        static var defaultValue: CGPoint { .zero }
        static func reduce(value: inout CGPoint, nextValue: () -> CGPoint) {
            // No-op
        }
    }
}

/// example
private struct ContentView: View {
    @State private var scrollOffset = CGPoint()
    
    var body: some View {
        OffsetObservingScrollView(offset: $scrollOffset) {
            ForEach(0..<100, id: \.self) { index in
                Text("\(index)")
                    .frame(width: 200)
            }
        }
        .overlay(alignment: .top) {
            Text("来了 \(scrollOffset.y) , \(scrollOffset.x)")
        }
    }
}

#Preview {
    ContentView()
}
