//
//  HeaderView.swift
//  ZynxSwiftUI
//
//  Created by Titus Logo on 12/12/24.
//

import SwiftUI

struct HeaderView: View {
    @SwiftUI.Environment(\.colorScheme) var colorScheme : ColorScheme

    private let horizontalSpacer: CGFloat = 12.0
    private let loginIconSize: CGSize = CGSize(width: 8.0, height: 8.0)
    
    var body: some View {
        HStack {
            Text("Zynx")
                .font(.system(size: 16.0, weight: .bold))
                .foregroundStyle(ColorToolSWUI.fontColor(for: colorScheme))
                .padding(
                    EdgeInsets(
                        top: .zero,
                        leading: horizontalSpacer,
                        bottom: .zero,
                        trailing: .zero
                    )
                )
            Rectangle()
                .fill(Color.green)
                .frame(width: loginIconSize.width, height: loginIconSize.height)
                .cornerRadius(loginIconSize.height/2)
            Spacer()
            Image("ic-verified", bundle: nil)
            Image("ic-instagram", bundle: nil)
                .renderingMode(.template)
                .colorMultiply(ColorToolSWUI.fontColor(for: colorScheme))
                .padding(
                    EdgeInsets(
                        top: .zero,
                        leading: .zero,
                        bottom: .zero,
                        trailing: horizontalSpacer
                    )
                )
        }
    }
}

#Preview {
    HeaderView()
}
