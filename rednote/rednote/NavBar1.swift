//
//  NavBar1.swift
//  rednote
//
//  Created by Mac Mini on 2026/4/15.
//

import SwiftUI

struct NavBar1: View {
//    // State 可刷新可变化
//    @State var selectValue = 0

    @EnvironmentObject var discoverVM: DiscoverViewModel

    var body: some View {
        HStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    Button {
                        withAnimation(.spring()) {
                            discoverVM.selectValue = 0
                        }
                    } label: {
                        Text("推荐")
                            .foregroundColor(discoverVM.selectValue == 0 ? .black : .gray)
                            .scaleEffect(discoverVM.selectValue == 0 ? 1.2 : 1)
                    }

                    Button {
                        withAnimation(.spring()) {
                            discoverVM.selectValue = 1
                        }
                    } label: {
                        Text("视频")
                            .foregroundColor(discoverVM.selectValue == 1 ? .black : .gray)
                            .scaleEffect(discoverVM.selectValue == 1 ? 1.2 : 1)
                    }

                    Button {
                        withAnimation(.spring()) {
                            discoverVM.selectValue = 2
                        }
                    } label: {
                        Text("直播")
                            .foregroundColor(discoverVM.selectValue == 2 ? .black : .gray)
                            .scaleEffect(discoverVM.selectValue == 2 ? 1.2 : 1)
                    }
                    Button {
                        withAnimation(.spring()) {
                            discoverVM.selectValue = 3
                        }
                    } label: {
                        Text("头像")
                            .foregroundColor(discoverVM.selectValue == 3 ? .black : .gray)
                            .scaleEffect(discoverVM.selectValue == 3 ? 1.2 : 1)
                    }
                    Button {
                        withAnimation(.spring()) {
                            discoverVM.selectValue = 4
                        }
                    } label: {
                        Text("推荐")
                            .foregroundColor(discoverVM.selectValue == 4 ? .black : .gray)
                            .scaleEffect(discoverVM.selectValue == 4 ? 1.2 : 1)
                    }

                    Button {
                        withAnimation(.spring()) {
                            discoverVM.selectValue = 5
                        }
                    } label: {
                        Text("视频")
                            .foregroundColor(discoverVM.selectValue == 5 ? .black : .gray)
                            .scaleEffect(discoverVM.selectValue == 5 ? 1.2 : 1)
                    }

                    Button {
                        withAnimation(.spring()) {
                            discoverVM.selectValue = 6
                        }
                    } label: {
                        Text("直播")
                            .foregroundColor(discoverVM.selectValue == 6 ? .black : .gray)
                            .scaleEffect(discoverVM.selectValue == 6 ? 1.2 : 1)
                    }
                    Button {
                        withAnimation(.spring()) {
                            discoverVM.selectValue = 7
                        }
                    } label: {
                        Text("头像")
                            .foregroundColor(discoverVM.selectValue == 7 ? .black : .gray)
                            .scaleEffect(discoverVM.selectValue == 7 ? 1.2 : 1)
                    }
                    Button {
                        withAnimation(.spring()) {
                            discoverVM.selectValue = 8
                        }
                    } label: {
                        Text("推荐")
                            .foregroundColor(discoverVM.selectValue == 8 ? .black : .gray)
                            .scaleEffect(discoverVM.selectValue == 8 ? 1.2 : 1)
                    }
                }
                .padding(.horizontal)
                .padding(.vertical,5)
            }
            .foregroundColor(.black)
            .padding(.leading)

            Button {
                withAnimation {
                    discoverVM.isShow = true
                }

            } label: {
                Image(systemName: "chevron.down")
                    .padding(.trailing)
            }
            .foregroundColor(.black)
        }
        .padding(.vertical, 10)
        .background(.white)
    }
}

//
// #Preview {
//    NavBar1()
// }
