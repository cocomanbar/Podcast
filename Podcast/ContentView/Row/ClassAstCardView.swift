//
//  ClassAstCardView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/12.
//

import SwiftUI

struct ClassAstCardView: View {
    var title: String
    
    var body: some View {
        ZStack(alignment: .center, content: {
            Color.cyan
                .frame(width: 240, height: 100)
                .cornerRadius(5.0)
            
            Text(title)
                .font(.system(size: 18))
                .fontWeight(.regular)
                .foregroundColor(.black.opacity(0.8))
        })
    }
}

#Preview {
    ClassAstCardView(title: "体育")
}
