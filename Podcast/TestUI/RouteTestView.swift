//
//  RouteTestView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/9.
//

import SwiftUI

struct RouteTestView: View {
    
    @State private var imgNane: String = "swift"
    @State private var numbers: [Int] = [0, 1]
    @State private var stepValue: Int = 1
    
    var body: some View {
        
        List {
            Section {
                NavigationLink(value: RoutePath.testPath(imgNane)) {
                    Image(systemName: imgNane)
                }
                
                // 置空为nil ui上表现也不一样
                ForEach(numbers, id: \.self) { i in
                    NavigationLink("\(i)", value: (i == 1) ? nil : RoutePath.testPath(String(i)))
                }
            }
            
            Section {
                Stepper("push页面数量：\(stepValue)", value: $stepValue, in: 1...3, step: 1)
                Button(action: {
                    for i in 1...stepValue {
                        Router.push(RoutePath.testPath("\(10 + i)"))
                    }
                }, label: {
                    Text("跳转")
                })
            } header: {
                //Text("当前栈内路由数据：\(router.path.count)")
            }
        }
        .navigationTitle("哈哈哈")
        .navigationBarTitleDisplayMode(.large)
        .pathDestination(destination: { path in
            switch path {
            case let .testPath(name):
                if name == imgNane {
                    Image(systemName: name)
                } else if name == "0" {
                    Text(name)
                } else if name == "11" || name == "12" || name == "13" {
                    Text(name)
                }
            default:
                path.body
            }
        })
    }
}

#Preview {
    RouteTestView()
}
