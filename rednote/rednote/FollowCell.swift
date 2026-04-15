//
//  FollowCell.swift
//  rednote
//
//  Created by Mac Mini on 2026/4/14.
//

import SwiftUI

struct FollowCell: View {
    
    @State var inputText = ""
    
    var headImag :String = "tx002"
    var userName :String = "孙悟空"
    var timeStr: String = "5天前"
    var contentImg: String = "image1"

    var body: some View {
        // 关注的人发的内容
        VStack {
            HStack {
                // 导航头像
                Image(headImag)
                    .CircleImage(radius: 50)
                Text(userName)
                Text(timeStr)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                Spacer()

                Button {
                    print("更多")
                } label: {
                    Image(systemName: "ellipsis")
                }
            }
            .foregroundColor(.primary)
            .padding(.trailing, 8)

            Image(contentImg)
                .resizable()
                .aspectRatio(contentMode: .fit)

            HStack {
                // 社交功能 喜欢 转发
                Button {
                } label: {
                    Image(systemName: "square.and.arrow.up")
                        .font(.system(size: 22))
                }
                Spacer()

                HStack {
                    Button {
                    } label: {
                        HStack(spacing: 0) {
                            Image(systemName: "heart")
                                .font(.system(size: 22))
                            Text("123")
                        }
                    }

                    Button {
                    } label: {
                        HStack(spacing: 0) {
                            Image(systemName: "star")
                                .font(.system(size: 22))
                            Text("123")
                        }
                    }

                    Button {
                    } label: {
                        HStack(spacing: 0) {
                            Image(systemName: "ellipsis.bubble")
                                .font(.system(size: 22))
                            Text("123")
                        }
                    }
                }
            }
            .foregroundColor(.black)
            .padding(10)

            HStack {
                // 内容
                Text("臣本布衣,躬耕于南阳,苟全性命于乱世,不求闻达于诸侯.先帝不以臣卑鄙,猥自枉屈,三顾臣于草庐之中.")
                    .lineLimit(2)
            }
            HStack {
                
                // 评论
                Image("tx003")
                    .CircleImage(radius: 40)
                    .padding(5)
                TextField("喜欢就给一个评论",text: $inputText)
                Spacer()
                
            }
            .background(.gray.opacity(0.1),in: RoundedRectangle(cornerRadius: 20))
            .padding(.horizontal,15)
         }
        // 只给整体竖直方向的
        .padding(.vertical)
        .background(.white)
    }
}

#Preview {
    FollowCell()
}
