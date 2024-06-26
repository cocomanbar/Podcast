//
//  NavigationBarModifier.swift
//  Podcast
//
//  Created by tanxl on 2024/6/16.
//

import SwiftUI

extension View {
    func navigationBarColor(_ backgroundColor: Binding<Color>) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor))
    }
}

// 修改导航栏的背景颜色
// 修改系统导航栏的为透明，交由body控制
struct NavigationBarModifier: ViewModifier {
    
    var backgroundColor: Binding<Color>
    
    init(backgroundColor: Binding<Color>) {
        self.backgroundColor = backgroundColor
        
        let navibarAppearance = UINavigationBarAppearance()
        navibarAppearance.configureWithTransparentBackground()
        navibarAppearance.backgroundColor = .clear
        UINavigationBar.appearance().standardAppearance = navibarAppearance
        UINavigationBar.appearance().compactAppearance = navibarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navibarAppearance
    }
    
    func body(content: Content) -> some View {
        ZStack{
            content
            VStack {
                GeometryReader { geometry in
                    backgroundColor.wrappedValue
                        .frame(height: geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                    Spacer()
                }
            }
        }
    }
}

private struct ContentView: View {
    
    @State var bgColor = Color.yellow
    @State var offset: CGPoint = .zero
    
    var body: some View {
        VStack(content: {
            
            OffsetObservingScrollView(offset: $offset) {
                VStack(alignment: .leading, spacing: 0, content: {
                    ForEach(0..<50) { i in
                        Text("=======\(i)")
                    }
                })
            }
            .onChange(of: offset) { newValue in
                bgColor = offset.y < -100 ? Color.red : Color.yellow
            }
        })
        .navigationTitle("\(offset.y)")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarColor($bgColor)
    }
}

#Preview {
    NavigationView {
        ContentView()
    }
}
