//
//  HomeListView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/9.
//

import SwiftUI

struct HomeListView<Content: View>: View {
    
    @ViewBuilder var content: () -> Content
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom), content: {
            content()
            HomePlayView()
        })
    }
}

struct HomePlayView: View {
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {
            BlurViewRepresentable(style: .light)
            
            HStack(alignment: .center, spacing: 0, content: {
                
                Color.blue
                    .frame(width: 50, height: 50)
                    .cornerRadius(3.0)
                
                VStack(alignment: .leading, spacing: 0, content: {
                    
                    Text("No.146 沈帅波：开店是中国创业的最大公约数")
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                        .lineLimit(1)
                    
                    Text("4月16日")
                        .font(.system(size: 14))
                        .fontWeight(.regular)
                        .lineLimit(1)
                        .foregroundColor(.black.opacity(0.5))
                })
                .padding(EdgeInsets(leading: 6))
                
                Image(systemName: "pause.fill")
                    .foregroundColor(.black)
                    .frame(width: 30, height: 30)
                    .background(Color.yellow)
                    .padding(EdgeInsets(leading: 12))
                
                Image(systemName: "goforward.30")
                    .foregroundColor(.black)
                    .frame(width: 30, height: 30)
                    .background(Color.yellow)
                    .padding(EdgeInsets(leading: 12))
            })
            .padding(EdgeInsets(leading: Layout.viewLeading, trailing: 0))
        })
        .frame(width: UIScreen.main.bounds.size.width, height: Layout.homePlayHeight)
        
    }
}

#Preview {
    HomeListView {
        List {
            ForEach(0..<15) { index in
                Text("\(index)")
                    .frame(height: 50)
            }
        }
    }
}
