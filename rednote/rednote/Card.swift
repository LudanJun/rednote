//
//  Card.swift
//  rednote
//
//  Created by Mac Mini on 2026/4/14.
//

import SwiftUI

struct Card: View {
    
    var text = "文案"
    var image = "image1"
    var username = "孙悟空"
    var headImg = "tx002"
    var locate = "33km"
    
    
    var body: some View {
        // 左对齐
        VStack(alignment: .leading,spacing: 8) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)

            Text(text)
            HStack(spacing: 0) {
                // 头像信息
                Image(headImg)
                    .CircleImage()
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    // 变成圆形
//                    .mask(Circle())
//                    // 设置大小
//                    .frame(width: 40,height: 40)
                Spacer().frame(width: 8)
                Text(username)
                
                Spacer()
                
                Image(systemName: "location")
                
                Text(locate)
            }
            //设置字体
            .font(.footnote)
        }
        // 将宽度设置为手机屏幕的一半
        .frame(width: SCREEN_WIDTH / 2 - 50)
        .padding()
        .background(.white,in:RoundedRectangle(cornerRadius: 8))
    }
}

#Preview {
    Card()
}
