//
//  NavBar2.swift
//  rednote
//
//  Created by Mac Mini on 2026/4/15.
//

import SwiftUI

struct NavBar2: View {
    @EnvironmentObject var discoverVM: DiscoverViewModel
    var body: some View {
        VStack {
            VStack {
                // 我的频道
                HStack {
                    Spacer().frame(width: 20)
                    Text("我的频道")
                        .bold()
                    Text("点击进入频道")
                        .font(.footnote)
                        .foregroundColor(.gray)
                    Spacer()

                    Button {
                    } label: {
                        Text("进入编辑")
                            .font(.footnote)
                            .padding(.vertical,2)
                            .padding(.horizontal,4)
                            .foregroundColor(.black)
                            .background(.gray.opacity(0.15), in: RoundedRectangle(cornerRadius: 10))
                    }

                    Button {
                        withAnimation {
                            discoverVM.isShow = false
                        }
                    } label: {
                        Image(systemName: "chevron.up")
                            .padding(.trailing)
                    }
                    .foregroundColor(.black)
                }

                HStack(spacing: 20) {
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioGray()
                    }
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioGray()
                    }
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioGray()
                    }
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioBorder()
                    }
                }
                .foregroundColor(.black)

                HStack(spacing: 20) {
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioGray()
                    }
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioGray()
                    }
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioGray()
                    }
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioBorder()
                    }
                }
                .foregroundColor(.black)

                HStack(spacing: 20) {
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioGray()
                    }
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioGray()
                    }
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioGray()
                    }
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioBorder()
                    }
                }
                .foregroundColor(.black)

                HStack(spacing: 20) {
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioGray()
                    }
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioGray()
                    }
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioGray()
                    }
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioBorder()
                    }
                }
                .foregroundColor(.black)
            }

            VStack {
                // 推荐频道
                HStack {
                    Text("推荐频道")
                        .bold()
                    Text("点击添加频道")
                        .font(.footnote)
                        .foregroundColor(.gray)
                    Spacer()
                }

                HStack(spacing: 20) {
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioGray()
                    }
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioGray()
                    }
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioGray()
                    }
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioGray()
                    }
                }
                .foregroundColor(.black)

                HStack(spacing: 20) {
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioGray()
                    }
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioGray()
                    }
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioGray()
                    }
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioGray()
                    }
                }
                .foregroundColor(.black)

                HStack(spacing: 20) {
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioGray()
                    }
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioGray()
                    }
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioGray()
                    }
                    Button {
                    } label: {
                        Text("推荐")
                            .font(.system(size: 12))
                            .ButtonStyleRadioGray()
                    }
                }
                .foregroundColor(.black)
            }
        }
//        .padding(.horizontal)
        .padding(.vertical)
        .background(.white)
    }
}

// #Preview {
//    NavBar2()
// }
