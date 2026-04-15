//
//  DiscoverVIew.swift
//  rednote
//
//  Created by Mac Mini on 2026/4/14.
//

import SwiftUI
// 发现页面
struct DiscoverView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            HStack(alignment: .top) {
                VStack {
                    Card()
                    Card(image: "image2")
                }

                VStack {
                    Card(image: "image3")
                    Card(image: "image4")
                }
            }
        }
        .padding(.vertical, 5)
    }
}

#Preview {
    DiscoverView()
}
