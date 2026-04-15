//
//  NearView.swift
//  rednote
//
//  Created by Mac Mini on 2026/4/14.
//

import SwiftUI
// 附近页面
struct NearView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            HStack(alignment: .top) {
                VStack {
                    Card()
                    Card(image: "image3")
                }

                VStack {
                    Card(image: "image2")
                    Card()
                }
            }
        }
        .padding(.vertical, 5)
    }
}

#Preview {
    NearView()
}
