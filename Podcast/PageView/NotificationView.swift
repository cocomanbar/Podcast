//
//  NotificationView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/11.
//

import SwiftUI

struct NotificationView: View {
    
    @Binding var disMiss: Bool
    
    @State var isOpen: Bool = true
    
    var body: some View {
        NavigationStack {
            List(content: {
                
                Section {
                    
                    ForEach(0..<4) { index in
                        
                        HStack(alignment: .center, spacing: 0) {
                            
                            Image("turtlerock")
                                .frame(width: 50, height: 50)
                                .clipped()
                                .cornerRadius(3.0)
                            
                            Text("三五环")
                                .font(.system(size: 18))
                                .foregroundColor(.black.opacity(0.8))
                                .padding()
                            
                            Toggle(isOn: $isOpen) {}
                                .tint(.blue)
                                .onChange(of: isOpen) { newValue in
                                    
                                }
                        }
                    }
                    
                } header: {
                    Text("新单集")
                        .font(.system(size: 14))
                        .foregroundColor(.black.opacity(0.6))
                }
            })
            .listStyle(.insetGrouped)
            .navigationTitle("通知")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button(action: {
                        disMiss.toggle()
                    }, label: {
                        Text("完成")
                            .font(.headline)
                            .foregroundColor(.purple)
                    })
                }
            })
        }
    }
}

#Preview {
    
    @State var disMiss: Bool = false
    return NotificationView(disMiss: $disMiss)
}
