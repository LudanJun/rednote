//
//  DiscoverVIew.swift
//  rednote
//
//  Created by Mac Mini on 2026/4/14.
//

import SwiftUI
// 发现页面
struct DiscoverView: View {
    // State 可刷新可变化
    @State var selectValue = 0
    var body: some View {
        VStack {
            HStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        HStack(spacing: 20) {
                            Button {
                                withAnimation(.spring()) {
                                    selectValue = 0
                                }
                            } label: {
                                Text("推荐")
                                    .foregroundColor(selectValue == 0 ? .black : .gray)
                                    .scaleEffect(selectValue == 0 ? 1.2 : 1)
                            }

                            Button {
                                withAnimation(.spring()) {
                                    selectValue = 1
                                }
                            } label: {
                                Text("视频")
                                    .foregroundColor(selectValue == 1 ? .black : .gray)
                                    .scaleEffect(selectValue == 1 ? 1.2 : 1)
                            }

                            Button {
                                withAnimation(.spring()) {
                                    selectValue = 2
                                }
                            } label: {
                                Text("直播")
                                    .foregroundColor(selectValue == 2 ? .black : .gray)
                                    .scaleEffect(selectValue == 2 ? 1.2 : 1)
                            }
                            Button {
                                withAnimation(.spring()) {
                                    selectValue = 3
                                }
                            } label: {
                                Text("头像")
                                    .foregroundColor(selectValue == 3 ? .black : .gray)
                                    .scaleEffect(selectValue == 3 ? 1.2 : 1)
                            }
                            Button {
                                withAnimation(.spring()) {
                                    selectValue = 4
                                }
                            } label: {
                                Text("推荐")
                                    .foregroundColor(selectValue == 4 ? .black : .gray)
                                    .scaleEffect(selectValue == 4 ? 1.2 : 1)
                            }

                            Button {
                                withAnimation(.spring()) {
                                    selectValue = 5
                                }
                            } label: {
                                Text("视频")
                                    .foregroundColor(selectValue == 5 ? .black : .gray)
                                    .scaleEffect(selectValue == 5 ? 1.2 : 1)
                            }

                            Button {
                                withAnimation(.spring()) {
                                    selectValue = 6
                                }
                            } label: {
                                Text("直播")
                                    .foregroundColor(selectValue == 6 ? .black : .gray)
                                    .scaleEffect(selectValue == 6 ? 1.2 : 1)
                            }
                            Button {
                                withAnimation(.spring()) {
                                    selectValue = 7
                                }
                            } label: {
                                Text("头像")
                                    .foregroundColor(selectValue == 7 ? .black : .gray)
                                    .scaleEffect(selectValue == 7 ? 1.2 : 1)
                            }
                            Button {
                                withAnimation(.spring()) {
                                    selectValue = 8
                                }
                            } label: {
                                Text("推荐")
                                    .foregroundColor(selectValue == 8 ? .black : .gray)
                                    .scaleEffect(selectValue == 8 ? 1.2 : 1)
                            }
                        }
                    }
                }
                .foregroundColor(.black)
                .padding(.leading)

                Button {
                } label: {
                    Image(systemName: "chevron.down")
                        .padding(.trailing)
                }
                .foregroundColor(.black)
            }
            .padding(.bottom,5)
            // 和selection进行绑定
            TabView(selection: $selectValue) {
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
    }
}

#Preview {
    DiscoverView()
}
