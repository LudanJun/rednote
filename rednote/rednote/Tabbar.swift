//
//  Tabbar.swift
//  rednote
//
//  Created by Mac Mini on 2026/4/14.
//

import SwiftUI

enum SelectionTabbarType {
    case home
    case shopping
    case not
    case account
}

struct Tabbar: View {
    @State var selectValue: SelectionTabbarType = .home
    var body: some View {
        HStack {
            Spacer()
            Button {
                selectValue = .home
            } label: {
                Text("首页")
            }
            .foregroundColor(selectValue == .home ? .black : .gray)

            Spacer()
            Button {
                selectValue = .shopping
            } label: {
                Text("购物")
            }
            .foregroundColor(selectValue == .shopping ? .black : .gray)

            Spacer()

            Button {
//                selectValue = 5
            } label: {
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    .padding(.vertical, 6)
                    .padding(.horizontal, 12)
                    .background(.red, in: RoundedRectangle(cornerRadius: 8))
            }

            Spacer()

            Button {
                selectValue = .not
            } label: {
                Text("消息")
            }
            .foregroundColor(selectValue == .not ? .black : .gray)

            Spacer()

            Button {
                selectValue = .account
            } label: {
                Text("我")
            }
            .foregroundColor(selectValue == .account ? .black : .gray)

            Spacer()
        }
        .padding(.top)
        .background(.white)
    }
}

#Preview {
    Tabbar()
}
