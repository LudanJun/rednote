//
//  SwiftUI+Extension.swift
//  SwiftUI+Extension
//
//  Created by Ben on 2026/4/13.
//

import Foundation
import SwiftUI

extension EdgeInsets {
    // 给EdgeInsets添加一个zero的属性
    static var zero: EdgeInsets {
        return EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
    }
}

extension Image {
    // 对Image进行的扩展，在之前自定义View的视频中有过介绍
    func resize(size: CGSize, contentModel: ContentMode) -> some View {
        resizable()
            .aspectRatio(contentMode: contentModel)
            .frame(width: size.width, height: size.height)
    }

    func CircleImage(radio: CGFloat = 40) -> some View {
        resizable()
            .aspectRatio(contentMode: .fit)
            .mask(Circle()) // 设置成圆形
            .frame(width: radio, height: radio)
    }
}
