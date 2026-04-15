//
//  FollowView.swift
//  rednote
//
//  Created by Mac Mini on 2026/4/14.
//

import SwiftUI
// 关注页面
struct FollowView: View {
    var body: some View {
        ScrollView {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    // 关注的人的头像列表
                    ForEach(0 ..< 3) { _ in
                        VStack(spacing: 0) {
                            Image("image3")
                                .CircleImage(radius: 80)
                            Text("用户名")
                        }
                    }
                }
            }
            .padding()
            .background(.white)

//            ForEach(0..<10) { _ in
//                FollowCell()
//            }
            FollowCell(headImag: "tx002", userName: "孙悟空", timeStr: "10天前", contentImg: "image2")
            FollowCell(headImag: "tx003", userName: "小芳", timeStr: "9天前", contentImg: "image3")
            FollowCell()

            FollowCell(headImag: "tx004", userName: "布尔玛", timeStr: "1个月前", contentImg: "image4")
        }
    }
}

#Preview {
    FollowView()
}
