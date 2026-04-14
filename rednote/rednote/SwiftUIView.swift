//
//  SwiftUIView.swift
//  rednote
//
//  Created by Mac Mini on 2026/4/14.
//

import SwiftUI

struct SwiftUIView: View {
    // 👉 核心：页面路径管理，控制跳转/返回
    @State private var navPath = NavigationPath()
    
    var body: some View {
        // 👇 NavigationStack 包在最外层，才能隐藏 TabBar + 控制返回
        NavigationStack(path: $navPath) {
            TabView {
                // ================== 首页 ==================
                VStack(alignment: .leading, spacing: 20) {
                    Text("首页（第1层）")
                    
                    // 跳 二级页面
                    NavigationLink(value: "page2") {
                        Text("点我跳二级页面")
                    }
                }
                .font(.title)
                .navigationTitle("首页")
                .tabItem {
                    Image(systemName: "house")
                    Text("首页")
                }
                
                // ================== 设置 ==================
                Text("设置页面")
                    .font(.system(size: 36))
                    .tabItem {
                        Image(systemName: "gear")
                        Text("设置")
                    }
            }
            // 👉 路由配置：根据 value 跳对应页面
            .navigationDestination(for: String.self) { pageName in
                switch pageName {
                case "page2":
                    Page2View(navPath: $navPath) // 二级页面
                case "page3":
                    Page3View(navPath: $navPath) // 三级页面
                default:
                    EmptyView()
                }
            }
        }
    }
}

// ================== 二级页面 ==================
struct Page2View: View {
    @Binding var navPath: NavigationPath
    
    var body: some View {
        VStack(spacing: 30) {
            Text("二级页面（第2层）")
            
            // 跳 三级页面
            NavigationLink(value: "page3") {
                Text("点我跳三级页面")
            }
            
            // 返回 首页
            Button("直接返回首页") {
                navPath.removeLast(navPath.count)
            }
        }
        .navigationTitle("二级页")
    }
}

// ================== 三级页面 ==================
struct Page3View: View {
    @Binding var navPath: NavigationPath
    
    var body: some View {
        VStack(spacing: 30) {
            Text("三级页面（第3层）")
                .font(.title)
            
            // 1. 返回上一页
            Button("← 返回上一页") {
                navPath.removeLast()
            }
            
            // 2. 直接返回首页（你最需要的！）
            Button("🏠 直接返回首页（根页面）") {
                navPath.removeLast(navPath.count)
            }
            
            // 3. 跳回二级页（跳过一级，指定返回）
            Button("↩️ 返回二级页") {
                navPath.removeLast(1)
            }
        }
        .navigationTitle("三级页")
    }
}
#Preview {
    SwiftUIView()
}
