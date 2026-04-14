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
            VStack(spacing: 0) {
                // 顶部内容
                HStack(spacing: 0) {
                    // 导航栏左侧的搜索图标
                    Button {
                    } label: {
                        Image(systemName: "magnifyingglass")
                    }
                    .foregroundColor(.black) // 设置前景色
                    .opacity(0)

                    Spacer()
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
                    Spacer()
                    // 导航栏右侧的搜索图标
                    Button {
                    } label: {
                        Image(systemName: "magnifyingglass")
                    }
                    .foregroundColor(.black) // 设置前景色
                }

                .padding()

                // 主题内容 selection联动指定的tag值
                TabView(selection: $selectValue) {
                    ScrollView(.vertical, showsIndicators: false) {
                        HStack(alignment: .top) {
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
                    .padding(.vertical,5)


                    ScrollView(.vertical, showsIndicators: false) {
                        HStack(alignment: .top) {
                            VStack {
                                Card()
                                Card(image: "image1")
                            }

                            VStack {
                                Card(image: "image1")
                                Card()
                            }
                        }
                    }
                    .tag(1)
                    .padding(.vertical,5)


                    ScrollView(.vertical, showsIndicators: false) {
                        HStack(alignment: .top) {
                            VStack {
                                Card()
                                Card(image: "image3")
                            }

                            VStack {
                                Card(image: "image2")
                                Card()
                            }
                        }
                    }
                    .tag(2)
                    .padding(.vertical,5)

                }
                // 分页方式
                .tabViewStyle(.page(indexDisplayMode: .never))
                .background(.gray.opacity(0.2))

                // 底部内容
                Tabbar()
            }
            .background(.white)
        }

        .navigationBarHidden(true)
    }
}

#Preview {
    ContentView()
}
