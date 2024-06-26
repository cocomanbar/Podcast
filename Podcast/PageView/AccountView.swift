//
//  AccountView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/11.
//

import SwiftUI

struct AccountView: View {
    
    @Binding var disMiss: Bool
    
    var list: [String] = [
        "管理订阅",
        "兑换充值卡或代码",
        "通过电子邮件发送充值卡",
        "为 Apple ID 重置",
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    Button(action: {
                        disMiss.toggle()
                    }, label: {
                        AccountHeadView()
                    })
                }
                
                Section {
                    Group {
                        ForEach(list, id: \.self) { title in
                            Button(action: {
                                disMiss.toggle()
                            }, label: {
                                Text(title)
                            })
                        }
                    }
                    .foregroundColor(.purple)
                    .font(.system(size: 16))
                }
                
                Section {
                    HideArrowIndicatorView {
                        HStack(alignment: .center, content: {
                            Text("通知")
                                .foregroundColor(.black.opacity(0.9))
                                .font(.system(size: 16))
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray.opacity(0.7))
                        })
                    } destination: {
                        NotificationView(disMiss: $disMiss)
                    }
                }
            }
            .listStyle(.grouped)
            .navigationTitle("账户")
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

struct AccountHeadView: View {
    
    var body: some View {
        HStack(alignment: .center, spacing: 0, content: {
            Color.cyan
                .frame(width: 60, height: 60)
                .cornerRadius(30.0)
                .overlay {
                    RoundedRectangle(cornerRadius: 30.0, style: .continuous)
                        .stroke(.purple, lineWidth: 2.0)
                }
            
            VStack(alignment: .leading, spacing: 5, content: {
                Text("谭某某")
                    .font(.system(size: 16))
                    .foregroundColor(.black.opacity(0.9))
                
                Text(verbatim: "123456789@qq.com")
                    .font(.system(size: 14))
                    .foregroundColor(.black.opacity(0.5))
            })
            .padding(EdgeInsets(leading: 16))
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.gray.opacity(0.7))
        })
    }
}

#Preview {
    @State var disMiss: Bool = false
    return AccountView(disMiss: $disMiss)
}
