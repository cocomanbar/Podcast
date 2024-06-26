//
//  EpisodeDetailView.swift
//  Podcast
//
//  Created by tanxl on 2024/6/13.
//

import SwiftUI

struct EpisodeDetailViewParameter: Hashable, Codable {
    
}

struct EpisodeDetailView: View {
    
    let parameter: EpisodeDetailViewParameter
    init(parameter: EpisodeDetailViewParameter) {
        self.parameter = parameter
    }
    
    let informationList: [[String: String]] = [
        ["title": "节目", "detailText": "声动早咖啡"],
        ["title": "频道", "detailText": "声动活跃"],
        ["title": "频率", "detailText": "一日一更"],
        ["title": "发布时间", "detailText": "2024年6月4日 GMT+8 上午7:00"],
        ["title": "长度", "detailText": "13分钟"],
        ["title": "年龄限制", "detailText": "儿童适宜"],
    ]
    
    @State private var offset: CGPoint = .zero
    @State private var navBackColor: Color = .clear
    @State private var showTitle: Bool = false
    
    // 按钮的宽高
    let iconWH: CGFloat = 15
    let iconBackWH: CGFloat = 30
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        
        ZStack(alignment: .top, content: {
            
            LinearGradient(gradient: Gradient(colors: [Color.brown, Color.white]), startPoint: .top, endPoint: .bottom)
            
            OffsetObservingScrollView(offset: $offset) {
                
                EpisodeHeaderView()
                
                Group {
                    VStack(alignment: .leading, spacing: 0, content: {
                        Text("""
                                                     5 月底，南京第一家 Costco 正式开业，开业当天便人山人海。值得注意的是，已经进入中国大陆 5 年的 Costco 只开出了 7 家门店，而同类型的会员仓储超市山姆，单是去年一年就开出了 5 家门店。占据仓储式会员超市全球最大市场份额的 Costco，在大陆市场的扩张速度为何如此缓慢？本期的咖啡豆回复就与之相关 06:50。日常购物中你更倾向选择 Costco 还是山姆？你是否希望所在的城市也开一家 Costco？在评论区和我们一起聊聊吧。
                                                     本期还有关于特斯拉、苹果、OpenAI 、欧盟和杰夫·贝佐斯的新动态 02:00，欢迎收听！
                                                     加入我们
                                                     声动活泼的工作邀请——我们正在寻找：节目监制、人才发展（HR）岗位的全职伙伴，以及节目监制实习生。工作地点: 北京东城区。详细信息与申请方式，请点击链接
                                                     主播
                                                     Mengyi
                                                     幕后制作
                                                     监制：Zelin、Qianwen、Stella
                                                     实习研究员：东君、鹂阳
                                                     运营：George
                                                     后期：沁茗
                                                     商业内容策划：Nene
                                                     封面设计：饭团
                                                     声动商务会客厅｜招聘入口｜给早咖啡投稿｜加入会员计划
                                                     欢迎扫码添加声小音，在节目之外和我们保持联系。
                                                     「用声音碰撞世界」，声动活泼致力于为人们提供源源不断的思考养料。
                                                         •    我们还有这些播客：声东击西、What's Next｜科技早知道、商业WHY酱、跳进兔子洞、吃喝玩乐了不起、不止金钱、泡腾 VC、反潮流俱乐部
                                                     
                                                         •    如果你喜欢我们的节目，欢迎打赏支持，或把我们的节目推荐给朋友
                                                     """)
                        .font(.system(size: 17))
                        .fontWeight(.regular)
                        .foregroundColor(.black.opacity(0.8))
                        .lineSpacing(3.0)
                        .padding(Layout.defaultEdge + EdgeInsets(top: 10, bottom: 40))
                        
                        HStack(alignment: .center, spacing: 0, content: {
                            Text("单集网站")
                                .foregroundStyle(.purple)
                            Spacer()
                            Image(systemName: "arrow.up.forward.app")
                                .foregroundColor(.purple)
                        })
                        .padding(Layout.defaultEdge + EdgeInsets(top: 10))
                        .topLine()
                        
                        Text("信息")
                            .font(.system(size: 24))
                            .foregroundStyle(.black)
                            .fontWeight(.semibold)
                            .padding(Layout.defaultEdge + EdgeInsets(top: 40))
                        
                        Group {
                            Color.clear
                                .frame(height: 20)
                            
                            ForEach(informationList, id: \.self) { json in
                                
                                EpisodeInformationView(title: json["title"] ?? "", detailText: json["detailText"] ?? "")
                                    .frame(height: 44)
                                    .topLine(visible: json == informationList.last ? .visible : .hidden)
                                    .bottomLine(visible: json != informationList.last ? .visible : .hidden)
                            }
                        }
                        .padding(Layout.defaultEdge)
                        
                    })
                    .frame(width: Layout.screenWidth)
                    .background(Color.white)
                }
            }
            
        })
        .playerInset()
        .ignoresSafeArea(.container, edges: .top)
        .navigationBarColor($navBackColor)
        .navigationBarBackButtonHidden()
        .onChange(of: offset) { newValue in
            // 第一阶段
            navBackColor = (newValue.y < -(EpisodeHeaderView.imageWH + 20)) ? Color.white : Color.clear
            // 第二阶段
            showTitle = newValue.y < -(EpisodeHeaderView.imageWH + 20 + 50)
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    ZStack(alignment: .center, content: {
                        Color.gray
                            .opacity(0.5)
                        Image(systemName: "chevron.backward")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .frame(width: iconWH, height: iconWH)
                    })
                    .frame(width: iconBackWH, height: iconBackWH)
                    .cornerRadius(iconBackWH / 2.0)
                }
            }
            
            ToolbarItem(placement: .principal) {
                Text("孟郊怎么混的？韩愈说他惨！苏轼说他\"可怜虫\"")
                    .lineLimit(1)
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .opacity(showTitle ? 1 : 0)
            }
            
            ToolbarItem(placement: .topBarTrailing) {
                HStack(alignment: .center, spacing: 8) {
                    ZStack(alignment: .center, content: {
                        Color.gray
                            .opacity(0.5)
                        Image(systemName: "bookmark")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .frame(width: iconWH, height: iconWH)
                    })
                    .frame(width: iconBackWH, height: iconBackWH)
                    .cornerRadius(iconBackWH / 2.0)
                    
                    ZStack(alignment: .center, content: {
                        Color.gray
                            .opacity(0.5)
                        Image(systemName: "checkmark")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .frame(width: iconWH, height: iconWH)
                    })
                    .frame(width: iconBackWH, height: iconBackWH)
                    .cornerRadius(iconBackWH / 2.0)
                    
                    ZStack(alignment: .center, content: {
                        Color.gray
                            .opacity(0.5)
                        Image(systemName: "ellipsis")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .frame(width: iconWH, height: iconWH)
                    })
                    .frame(width: iconBackWH, height: iconBackWH)
                    .cornerRadius(iconBackWH / 2.0)
                }
            }
        }
        .onDisappear {
            let navibarAppearance = UINavigationBarAppearance()
            navibarAppearance.configureWithTransparentBackground()
            navibarAppearance.backgroundColor = .white
            UINavigationBar.appearance().standardAppearance = navibarAppearance
            UINavigationBar.appearance().compactAppearance = navibarAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = navibarAppearance
        }
    }
}

private struct EpisodeInformationView: View {
    
    var title: String
    var detailText: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 0, content: {
            Text(title)
                .fontWeight(.regular)
                .foregroundColor(.gray)
                .font(.system(size: 16))
            Spacer()
            Text(detailText)
                .fontWeight(.regular)
                .foregroundColor(.black)
                .font(.system(size: 16))
        })
    }
}

private struct EpisodeHeaderView: View {
    
    static let topPadding: CGFloat = Layout.navBarHeight + 20
    static let imageWH: CGFloat = 180
    
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            Color.cyan
                .frame(width: Self.imageWH, height: Self.imageWH)
                .cornerRadius(8.0)
            
            Text("6月7日 · 第一集 · 12分钟")
                .font(.system(size: 14))
                .foregroundColor(.black.opacity(0.5))
                .padding(EdgeInsets(top: 16))
            
            Text("孟郊怎么混的？韩愈说他惨！苏轼说他\"可怜虫\"")
                .lineLimit(2)
                .font(.system(size: 18))
                .fontWeight(.bold)
                .foregroundColor(.black.opacity(0.8))
                .padding(EdgeInsets(top: 16, leading: Layout.viewLeading * 2, trailing: Layout.viewTrailing * 2))
            
            HStack(alignment: .center, spacing: 4, content: {
                Text("声动早咖啡")
                    .font(.system(size: 14))
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                
                Image(systemName: "chevron.right")
                    .frame(width: 10, height: 12)
                    .scaledToFit()
                    .clipped()
                    .foregroundColor(.gray)
            })
            .padding(EdgeInsets(top: 14))
            
            HStack(alignment: .center, spacing: 6, content: {
                
                Image(systemName: "play.fill")
                    .foregroundColor(.purple)
                
                Text("播放")
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
                    .foregroundColor(.purple)
            })
            .frame(width: 250, height: 40)
            .background(.gray.opacity(0.3))
            .cornerRadius(6.0)
            .padding(EdgeInsets(top: 14))
        })
        .padding(EdgeInsets(top: Self.topPadding, bottom: 20))
    }
}

#Preview {
    NavigationStack {
        EpisodeDetailView(parameter: EpisodeDetailViewParameter())
    }
}
