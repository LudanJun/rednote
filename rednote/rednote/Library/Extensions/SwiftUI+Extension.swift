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
    
    
    /// 圆形头像
    /// - Parameter radio: 半径其实是头像宽度和高度
    /// - Returns: 返回一个圆形头像
    func CircleImage(radius: CGFloat = 40) -> some View {
        resizable()
            .aspectRatio(contentMode: .fit)
            .mask(Circle()) // 设置成圆形
            .frame(width: radius, height: radius)
    }
}

extension View {
    
    /// 圆角按钮
    /// - Parameters:
    ///   - vertical: 按钮内部垂直间距
    ///   - horizontal: 按钮内部水平间距
    ///   - background: 按钮背景色
    ///   - borderOpacity: 按钮背景色透明度
    ///   - cornerRadius: 按钮边框圆角
    /// - Returns: 返回一个圆角按钮样式
    func ButtonStyleRadioGray(vertical: CGFloat = 8, horizontal: CGFloat = 25, background: Color = Color.gray, borderOpacity: CGFloat = 0.2, cornerRadius: CGFloat = 10) -> some View {
        padding(.vertical, 8)
            .padding(.horizontal, 25)
            .background(.gray.opacity(0.1), in: RoundedRectangle(cornerRadius: 10))
    }

    /// 带边框的按钮
    /// - Parameters:
    ///   - vertical: 按钮内部垂直间距
    ///   - horizontal: 按钮内部水平间距
    ///   - background: 按钮背景色
    ///   - borderWith: 按钮边框宽度
    ///   - borderColor: 按钮边框颜色
    ///   - borderOpacity: 按钮边框颜色透明的
    ///   - cornerRadius: 按钮边框圆角
    /// - Returns: 返回一个带边框的按钮样式
    func ButtonStyleRadioBorder(vertical: CGFloat = 8, horizontal: CGFloat = 25, background: Color = Color.white, borderWith: CGFloat = 1, borderColor: Color = Color.gray, borderOpacity: CGFloat = 0.2, cornerRadius: CGFloat = 10) -> some View
    {
        padding(.vertical, vertical)
            .padding(.horizontal, horizontal)
            .background(background)
            .padding(borderWith)
            .background(borderColor.opacity(borderOpacity), in: RoundedRectangle(cornerRadius: 10))
    }
}
