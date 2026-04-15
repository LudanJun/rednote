//
//  AccountView.swift
//  rednote
//
//  Created by Mac Mini on 2026/4/15.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    ZStack {
                        Image("image3")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 350)
                            .clipped() // 裁剪
                        Color.black.opacity(0.3)
                        VStack {
                            HStack {
                                Image(systemName: "line.3.horizontal")
                                    .font(.system(size: 20))
                                Spacer()
                                Image(systemName: "square.and.arrow.up")
                                    .font(.system(size: 20))
                            }
                            .padding(.horizontal)
                            .foregroundColor(.white)
                            VStack(alignment: .leading) {
                                HStack {
                                    Image("tx005").CircleImage(radius: 80)
                                    VStack(alignment: .leading, spacing: 8) {
                                        Text("特南克斯")
                                            .font(.title)
                                            .foregroundColor(.white)
                                        Text("小红书号:188888")
                                            .font(.footnote)
                                            .foregroundColor(.gray)
                                    }
                                    Spacer()
                                }.padding(.horizontal)

                                Button {
                                } label: {
                                    HStack {
                                        Text("向大家介绍自己")
                                        Image(systemName: "pencil")
                                    }
                                    .font(.footnote)
                                    .foregroundColor(.gray)
                                    .padding(.horizontal)
                                }
                                .padding(.bottom)
                                HStack {
                                    Button {
                                    } label: {
                                        Text("20岁")
                                            .foregroundColor(.white)
                                            .font(.footnote)
                                            .padding(.vertical, 2)
                                            .padding(.horizontal, 20)
                                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 10))
                                    }

                                    Button {
                                    } label: {
                                        Text("+添加地区,职业标签")
                                            .foregroundColor(.white)
                                            .font(.footnote)
                                            .padding(.vertical, 2)
                                            .padding(.horizontal, 20)
                                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 10))
                                    }

                                    Spacer()
                                }
                                .padding(.horizontal)
                                .padding(.bottom)

                                HStack(spacing: 15) {
                                    VStack {
                                        Text("5")
                                        Text("关注")
                                            .font(.caption2)
                                    }
                                    VStack {
                                        Text("5")
                                        Text("粉丝")
                                            .font(.caption2)
                                    }
                                    VStack {
                                        Text("5")
                                        Text("点赞和收藏")
                                            .font(.caption2)
                                    }
                                    Spacer()

                                    Button {
                                        // 点击事件
                                    } label: {
                                        Text("编辑资料")
                                            .font(.system(size: 14))
                                            .foregroundColor(.white)
                                            .padding(.vertical, 2)
                                            .padding(.horizontal, 20)
                                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 10))
                                            .overlay(RoundedRectangle(cornerRadius: 10, style: .continuous).stroke(.white, lineWidth: 1))
                                    }

                                    Button {
                                    } label: {
                                        Image(systemName: "gearshape")
                                            .foregroundColor(.white)
                                            .padding(.vertical, 2)
                                            .padding(.horizontal, 20)
                                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 10))
                                            .overlay(RoundedRectangle(cornerRadius: 10, style: .continuous).stroke(.white, lineWidth: 1))
                                    }
                                }
                                .padding(.horizontal)
                                .foregroundColor(.white)
                            }
                        }
                    }

                    VStack {
                        HStack(spacing: 40) {
                            Button {
                            } label: {
                                Text("笔记")
                            }
                            Button {
                            } label: {
                                Text("收藏")
                            }
                            Button {
                            } label: {
                                Text("赞过")
                            }
                        }
                        .padding(10)

                        TabView {
                            VStack{
                                ForEach(0 ..< 10) { _ in
                                    FollowCell(contentImg: "image2")
                                }
                            }
                            .tag(0)

                            VStack {
                                Card(text: "你好", image: "image3", username: "乔布斯", headImg: "tx002", locate: "299km")
                            }
                            .tag(1)

                            VStack {
                                Card(text: "你好", image: "image4", username: "乔布斯", headImg: "tx002", locate: "299km")
                            }
                            .tag(2)
                        }
                        .padding(.top, 40)
                        .tabViewStyle(.page(indexDisplayMode: .never))
                        .frame(minWidth: SCREEN_WIDTH ,minHeight: SCREEN_HEIGHT)
                    }
                    .foregroundColor(.black)
                    .background(.orange, in: RoundedRectangle(cornerRadius: 30))
                    .offset(y: -32)
                }
                .ignoresSafeArea()

                Tabbar()
            }
        }
    }
}

#Preview {
    AccountView()
}
