//
//  HorizontallyAlignedLabelStyle.swift
//  Kuchi (iOS)
//
//  Created by 하진호 on 2022/07/09.
//

import SwiftUI

struct HorizontallyAlignedLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .center) {
            configuration.icon
            configuration.title
        }
    }
}

extension Label {
    func horizontallyAlignedLabelStyle() -> some View {
        self.labelStyle(HorizontallyAlignedLabelStyle())
    }
}

struct HorizontallyAlignedLabelStyle_Previews: PreviewProvider {
    static var previews: some View {
        Label {
            VStack(alignment: .leading) {
                Text("Welcome to")
                    .font(.headline)
                    .bold()
                Text("Kuchi")
                    .font(.largeTitle)
                    .bold()
            }
            .foregroundColor(.red)
            .lineLimit(1)
            .padding(.horizontal)
        } icon: {
            Image(systemName: "table")
                .resizable()
                .frame(width: 30, height: 30)
                .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                .background(Color(white: 0.9))
                .clipShape(Circle())
                .foregroundColor(.red)
        }
        .horizontallyAlignedLabelStyle()
    }
}
