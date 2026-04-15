//
//  DiscoverVIew.swift
//  rednote
//
//  Created by Mac Mini on 2026/4/14.
//

import SwiftUI
// 发现页面
struct DiscoverView: View {
    @EnvironmentObject var discoverVM: DiscoverViewModel
    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                if (discoverVM.isShow == true){
                    NavBar2()
                }else{
                    NavBar1()
                }
                // 和selection进行绑定
                TabView(selection: $discoverVM.selectValue) {
                    ForEach(0 ..< 10) {
                        item in
                        ScrollView(.vertical, showsIndicators: false) {
                            HStack(alignment: .top) {
                                VStack {
                                    Card(text: "\(item)")
                                    Card(image: "image2")
                                }

                                VStack {
                                    Card(image: "image3")
                                    Card(image: "image4")
                                }
                            }
                        }
                        .padding(.vertical, 5)
                        .tag(item)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
            }
//            if discoverVM.isShow == true {
//                NavBar2()
//                    .opacity(discoverVM.isShow ? 1 : 0) // 淡入淡出
//                            .offset(y: discoverVM.isShow ? 0 : -60) // 👈 核心！上下动画
//                            .clipped()
//            }
        }
//        // 👇 动画必须绑在这里，才有效！
//        .animation(.easeInOut(duration: 0.35), value: discoverVM.isShow)
//        .clipped() // 防止超出屏幕
    }
}

#Preview {
//    DiscoverView()
    ContentView()
}
