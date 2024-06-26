//
//  PodcastDetailView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/15.
//

import SwiftUI

struct PodcastDetailViewParameter: Hashable, Codable {
    
}

struct PodcastDetailView: View {
    
    @State private var navColor: Color = .yellow
    @State private var offset: CGPoint = .zero
    
    let iconW: CGFloat = 30
    
    var body: some View {
        OffsetObservingScrollView(offset: $offset, content: {
            VStack(alignment: .center, spacing: 0, content: {
                ForEach(0..<50) { _ in
                    Text("Hello, World!")
                }
            })
        })
        .navigationTitle("\(offset.y)")
        .navigationBarTitleDisplayMode(.inline)
        .playerInset()
        .onChange(of: offset, perform: { newValue in
            navColor = newValue.y < -200 ? Color.yellow : Color.clear
        })
        .onChange(of: navColor, perform: { newValue in
            let appearance: UINavigationBarAppearance = UINavigationBar.appearance().standardAppearance.copy()
            appearance.backgroundColor = UIColor(newValue)
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().compactAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
        })
        .toolbar(content: {
            
            ToolbarItemGroup(placement: .topBarLeading) {
                ZStack(alignment: .center, content: {
                    Color.gray
                        .opacity(0.5)
                    Image(systemName: "chevron.backward")
                        .foregroundColor(.white)
                })
                .frame(width: iconW, height: iconW)
                .cornerRadius(iconW / 2.0)
            }
            
            ToolbarItemGroup(placement: .topBarTrailing) {
                
                HStack(alignment: .center, spacing: 2, content: {
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                    
                    Text("关注")
                        .font(.system(size: 16))
                        .foregroundColor(.white)
                })
                .padding(EdgeInsets(leading: 8, trailing: 8))
                .frame(height: 30)
                .background(Color.gray.opacity(0.5))
                .cornerRadius(15.0)
                
                ZStack(alignment: .center, content: {
                    Color.gray
                        .opacity(0.5)
                    Image(systemName: "ellipsis")
                        .foregroundColor(.white)
                })
                .frame(width: iconW, height: iconW)
                .cornerRadius(iconW / 2.0)
            }
        })
        .bgcolor_(Color.yellow)
    }
}

extension View {
    
    func bgcolor_(_ color: Color) -> some View {
        modifier(UINavigationBarModifier(backgroundColor: color))
    }
}

// 修改导航栏的颜色
struct UINavigationBarModifier: ViewModifier {
    
    let backgroundColor: Color
    init(backgroundColor: Color) {
        self.backgroundColor = backgroundColor
        
        let navibarAppearance = UINavigationBar.appearance().standardAppearance.copy()
        navibarAppearance.configureWithTransparentBackground()
        //修改背景的颜色
        navibarAppearance.backgroundColor = UIColor(backgroundColor)
        //设置字体的颜色和大小
        navibarAppearance.titleTextAttributes = [
            .foregroundColor:UIColor.black,
            .font:UIFont.monospacedSystemFont(ofSize: 17, weight: .black)
        ]
        
        UINavigationBar.appearance().standardAppearance = navibarAppearance
        UINavigationBar.appearance().compactAppearance = navibarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navibarAppearance
    }

    func body(content: Content) -> some View {
        content
    }
}

#Preview {
    NavigationView {
        PodcastDetailView()
    }
}
