//
//  ContentView.swift
//  rednote
//
//  Created by Mac Mini on 2026/4/14.
//

import SwiftUI

struct ContentView: View {
    @State var selectValue = 0

    var body: some View {
        NavigationView {
            ScrollView {
                Color.clear.frame(height: 40)
                // 设置body内容

                // 绑定值
                TabView(selection: $selectValue) {
                    VStack {
                        // 顶部对齐
                        HStack(alignment: .top) {
                            // 两栏布局
                            VStack {
                                Card()
                                Card(image: "image2")
                            }
                            VStack {
                                Card(image: "image3")
                                Card()
                            }
                        }
                    }
                    .tag(0)
                    .frame(maxWidth: .infinity) // 左右撑满

                    VStack {
                        // 顶部对齐
                        HStack(alignment: .top) {
                            // 两栏布局
                            VStack {
                                Card()
                                Card(image: "image2")
                            }
                            VStack {
                                Card(image: "image2")
                                Card()
                            }
                        }
                    }
                    .tag(1)
                    .frame(maxWidth: .infinity) // 左右撑满

                    VStack {
                        // 顶部对齐
                        HStack(alignment: .top) {
                            // 两栏布局
                            VStack {
                                Card()
                                Card(image: "image3")
                            }
                            VStack {
                                Card(image: "image3")
                                Card()
                            }
                        }
                    }
                    .tag(2)
                    .frame(maxWidth: .infinity) // 左右撑满
                }
                // 分页方式
                .tabViewStyle(.page)
                // 设置frame大小不然显示不出来
                .frame(minHeight: SCREEN_HEIGHT)
            }
            // 设置背景色
            .background(.gray.opacity(0.2))
            .ignoresSafeArea()
            // 导航栏配置
            .toolbar {
                // placement: .principal = 导航栏中间
                ToolbarItem(placement: .principal) {
                    // 导航栏的三个button
                    HStack {
                        Button {
                            selectValue = 0

                        } label: {
                            Text("关注")
                                .foregroundColor(selectValue == 0 ? .black : .gray)
                            // 通过button来调整select数值
                        }

                        Button {
                            selectValue = 1
                        } label: {
                            Text("发现")
                                .foregroundColor(selectValue == 1 ? .black : .gray)
                        }

                        Button {
                            selectValue = 2
                        } label: {
                            Text("附近")
                                .foregroundColor(selectValue == 2 ? .black : .gray)
                        }
                    }
                    .foregroundColor(.black) // 设置前景色
                }
                // navigationBarTrailing = 导航栏最右侧
                ToolbarItem(placement: .navigationBarTrailing) {
                    // 导航栏右侧的搜索图标
                    Button {
                    } label: {
                        Image(systemName: "magnifyingglass")
                    }
                    .foregroundColor(.black) // 设置前景色
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
