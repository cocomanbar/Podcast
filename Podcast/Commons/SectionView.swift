//
//  SectionView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/3.
//

import SwiftUI

enum SectionStyle {
    //显示纯标题样式
    case title(title: String, more: Bool = true)
    //显示标题+子标题样式
    case titlePlus(title: String, subject: String, more: Bool = true)
    //显示图片+标题+子标题样式
    case titleUltra(image: String, title: String, subject: String, more: Bool = true)
}

struct SectionView<Content: View>: View {
    
    var style: SectionStyle
    var vInset: EdgeInsets
    var content: Content
    var linkValue: RoutePath?
    
    init(style: SectionStyle,
         vInset: EdgeInsets = EdgeInsets(top: 35, bottom: 15),
         linkValue: RoutePath? = nil,
         @ViewBuilder content: () -> Content) {
        self.style = style
        self.vInset = EdgeInsets(top: vInset.top, bottom: vInset.bottom)
        self.linkValue = linkValue
        self.content = content()
    }
    
    var body: some View {
        Section {
            content
        } header: {
            
            switch style {
            case let .title(title, more):
                let target = {
                    TitleView(title: title, more: more)
                        .padding(Layout.listRowInset + vInset)
                }
                if more {
                    NavigationLink(value: linkValue) {
                        target()
                    }
                } else {
                    target()
                }
                
            case let .titlePlus(title, subject, more):
                let target = { 
                    VStack(alignment: .leading, spacing: 3, content: {
                        TitleView(title: title, more: more)
                        SubjectView(subject: subject)
                    })
                    .padding(Layout.listRowInset + vInset)
                }
                if more {
                    NavigationLink(value: linkValue) {
                        target()
                    }
                } else {
                    target()
                }
                
            case let .titleUltra(_, title, subject, more):
                let target = {
                    HStack(alignment: .center, spacing: 12, content: {
                        Color.cyan
                            .frame(width: 50, height: 50)
                            .cornerRadius(8.0)
                        VStack(alignment: .leading, spacing: 0, content: {
                            SubjectView(subject: subject)
                            TitleView(title: title, more: more)
                        })
                    })
                    .padding(Layout.listRowInset + vInset)
                }
                if more {
                    NavigationLink(value: linkValue) {
                        target()
                    }
                } else {
                    target()
                }
                
            }
            
        } footer: {
            Color.clear
                .frame(height: 0)
        }
        .listRowSeparator(.hidden)
        .listRowInsets(EdgeInsets())
    }
}

private struct TitleView: View {
    
    let title: String
    let more: Bool
    init(title: String, more: Bool) {
        self.title = title
        self.more = more
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Text(title)
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(.black.opacity(0.8))
            if more {
                Image(systemName: "chevron.right")
                    .resizable()
                    .frame(width: 10, height: 15)
                    .padding(EdgeInsets(leading: 10))
                    .foregroundColor(.gray.opacity(0.8))
            }
        }
    }
}

private struct SubjectView: View {
    
    let subject: String
    init(subject: String) {
        self.subject = subject
    }
    
    var body: some View {
        Text(subject)
            .font(.system(size: 16, weight: .regular))
            .foregroundColor(.black.opacity(0.5))
    }
}

#Preview {
    List {
        SectionView(style: SectionStyle.titleUltra(image: "", title: "测试", subject: "测试")) {}
    }
    .listStyle(.grouped)
    .scrollContentBackground(.hidden)
    .background(Color.white)
    .environment(\.defaultMinListRowHeight, 0)
    .environment(\.defaultMinListHeaderHeight, 0)
}
