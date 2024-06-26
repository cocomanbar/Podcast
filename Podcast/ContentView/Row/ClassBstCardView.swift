//
//  ClassBstCardView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/12.
//

import SwiftUI

struct ClassBstCardView: View {
   
    var title: String
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .top), content: {
            Color.mint
            
            VStack(alignment: .leading, spacing: 0, content: {
                Spacer()
                
                Text(title)
                    .foregroundColor(.white)
                    .font(.system(size: 16))
                    .padding()
            })
        })
        .frame(width: 230, height: 100)
        .cornerRadius(8.0)
    }
}

#Preview {
    ClassBstCardView(title: "哈哈")
}
