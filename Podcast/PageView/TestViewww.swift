//
//  TestViewww.swift
//  Podcast
//
//  Created by tanxl on 2024/6/16.
//

import SwiftUI

struct ContentView11: View {
    @State var bgColor = Color.yellow
    @State var offset: CGPoint = .zero
    
    let iconW: CGFloat = 30
    
    var body: some View {
        NavigationView {
            VStack(content: {
                
                OffsetObservingScrollView(offset: $offset) {
                    VStack(alignment: .leading, spacing: 0, content: {
                        ForEach(0..<50) { i in
                            Text("=======\(i)")
                        }
                    })
                }
                .onChange(of: offset) { newValue in
                    bgColor = offset.y < -100 ? Color.red : Color.clear
                }
            })
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarColor($bgColor)
            .toolbar(content: {
                
                ToolbarItem(placement: .topBarLeading) {
                    ZStack(alignment: .center, content: {
                        Color.gray
                            .opacity(0.5)
                        Image(systemName: "chevron.backward")
                            .foregroundColor(.white)
                    })
                    .frame(width: iconW, height: iconW)
                    .cornerRadius(iconW / 2.0)
                }
                
                ToolbarItem(placement: .navigation) {
                    Text("Title: \(offset.y)")
                        .lineLimit(1)
                        .foregroundColor(.blue)
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(EdgeInsets(leading: 10, trailing: 10))
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    HStack(alignment: .center, spacing: 8, content: {
                        HStack(alignment: .center, spacing: 2, content: {
                            Image(systemName: "plus")
                                .foregroundColor(.white)
                            
                            Text("关注哈哈哈哈")
                                .font(.system(size: 16))
                                .foregroundColor(.white)
                        })
                        .padding(EdgeInsets(leading: 6, trailing: 6))
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
                        
                        ZStack(alignment: .center, content: {
                            Color.gray
                                .opacity(0.5)
                            Image(systemName: "ellipsis")
                                .foregroundColor(.white)
                        })
                        .frame(width: iconW, height: iconW)
                        .cornerRadius(iconW / 2.0)
                    })
                }
            })
        }
    }
}

#Preview {
    ContentView11()
}
