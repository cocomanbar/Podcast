//
//  ImageTestView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/17.
//

import SwiftUI

struct ImageTestView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20, content: {
            
            VStack(content: {
                Text("图片原本的尺寸")
                
                ZStack(content: {
                    Image(systemName: "bookmark")
                        .foregroundColor(.white)
                        .background(Color.gray)
                })
                .frame(width: 100, height: 100)
                .background(Color.blue)
            })
            
            VStack(content: {
                Text("拉伸到 50x50，但是保持源图片尺寸比例显示")
                
                ZStack(content: {
                    Image(systemName: "bookmark")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.white)
                        .frame(width: 50, height: 50)
                        .background(Color.gray)
                })
                .frame(width: 100, height: 100)
                .background(Color.blue)
            })
            
            VStack(content: {
                Text("拉伸到 50x50，但是保持源图片尺寸比例显示")
                
                ZStack(content: {
                    Image(systemName: "bookmark")
                        .resizable()
                        .scaledToFill()
                        .foregroundColor(.white)
                        .frame(width: 50, height: 50)
                        .background(Color.gray)
                })
                .frame(width: 100, height: 100)
                .background(Color.blue)
            })
        })
    }
}

#Preview {
    ImageTestView()
}
