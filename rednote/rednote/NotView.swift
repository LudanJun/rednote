//
//  NotView.swift
//  rednote
//
//  Created by Mac Mini on 2026/4/15.
//

import SwiftUI

struct NotView: View {
//    // 👇 只需要加这一段 init 代码，彻底去掉导航栏底线
//    init() {
//        // 去掉导航栏底部横线/阴影
//        UINavigationBar.appearance().shadowImage = UIImage()
//        // 把导航栏背景设为纯色，取消毛玻璃
//        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
//        UINavigationBar.appearance().backgroundColor = .white
//    }

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    // 顶部
                    Button {
                    } label: {
                        Text("开启聊天")
                    }
                    .opacity(0)

                    Spacer()

                    Text("消息")
                        .font(.title3)

                    Spacer()

                    Button {
                    } label: {
                        Text("开启聊天")
                    }
                }
                .foregroundColor(.black)
                .padding()

                ScrollView {
                    // 内容
                    HStack { // 喜欢 关注 评论
                        Spacer()
                        Button {
                            print("赞和收藏")
                        } label: {
                            VStack {
                                Image(systemName: "heart.fill")
                                    .foregroundColor(.pink)
                                    .font(.system(size: 23))
                                    .padding(10)
                                    .background(.pink.opacity(0.2), in: RoundedRectangle(cornerRadius: 10))
                                Text("赞和收藏")
                                    .font(.system(size: 15))
                            }
                        }

                        Spacer()
                        Button {
                            print("新增关注")
                        } label: {
                            VStack {
                                Image(systemName: "person.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 23))
                                    .padding(10)
                                    .background(.blue.opacity(0.2), in: RoundedRectangle(cornerRadius: 10))
                                Text("新增关注")
                                    .font(.system(size: 15))
                            }
                        }
                        Spacer()
                        Button {
                            print("评论和@")
                        } label: {
                            VStack {
                                Image(systemName: "ellipsis.bubble.fill")
                                    .foregroundColor(.green)
                                    .font(.system(size: 23))
                                    .padding(10)
                                    .background(.green.opacity(0.2), in: RoundedRectangle(cornerRadius: 10))
                                Text("评论和@")
                                    .font(.system(size: 15))
                            }
                        }
                        Spacer()
                    }
                    .foregroundColor(.black)
                    .padding()

                    // 消息列表
                    
                    ForEach(0..<5){
                        item in
                        VStack {
                            HStack(alignment: .top) {
                                HStack {
                                    Image("tx004")
                                        .CircleImage(radius: 60)
                                    VStack(alignment: .leading, spacing: 5) {
                                        Text("布尔玛")
                                        Text("你好!,交个朋友")
                                            .font(.footnote)
                                            .foregroundColor(.gray)
                                    }
                                }
                                Spacer()
                                Text("08-06")
                                    .font(.footnote)
                                    .foregroundColor(.gray)
                                    .padding()
                            }
                        }
              
                    }
                    
                    
                }

                Tabbar()
            }
        }
    }
}

#Preview {
    NotView()
}
