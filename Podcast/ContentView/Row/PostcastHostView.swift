//
//  PostcastHostView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/12.
//

import SwiftUI

struct PostcastHostView: View {
    
    var title: String
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .top), content: {
            Color.purple
            
            HStack(alignment: .top, spacing: 0, content: {
                
                Color.white
                    .frame(width: 0.5)
                    .padding(EdgeInsets(trailing: 6))
                
                VStack(alignment: .leading, spacing: 0, content: {
                    Group {
                        Text("伴你收听")
                            .font(.system(size: 14))
                        Spacer()
                        Text(title)
                            .font(.system(size: 18))
                            .fontWeight(.medium)
                    }
                    .foregroundColor(.white)
                })
            })
            .padding(EdgeInsets(top: 12,leading: 20, bottom: 12))
        })
        .frame(width: 230, height: 120)
        .cornerRadius(8.0)
    }
}

#Preview {
    PostcastHostView(title: "娃哈哈")
}
