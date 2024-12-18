//
//  ProfileView.swift
//  ZynxSwiftUI
//
//  Created by Titus Logo on 12/12/24.
//

import SwiftUI
import Kingfisher

struct ProfileView: View {
    private static let horizontalOuterPaddings: CGFloat = 16.0
    private static let maxHeightScale: CGFloat = 180.0 / 160.0
    
    private let pillViewPadding: EdgeInsets = EdgeInsets(
        top: 8.0,
        leading: 8.0,
        bottom: .zero,
        trailing: .zero
    )
    
    private static var calculatedMaxWidth: CGFloat {
        UIScreen.main.bounds.width - (horizontalOuterPaddings * 2)
    }
    
    private static var calculatedMaxHeight: CGFloat {
        calculatedMaxWidth * maxHeightScale
    }
    
    private static var calculatedAdditionalUserHeight: CGFloat {
        calculatedMaxHeight * AdditionalUsersView.imageScale
    }
    
    public static func calculateBottomOffset() -> CGFloat {
        calculatedAdditionalUserHeight / 2
    }
    
    var body: some View {
        ZStack {
            KFImage(URL(string: "https://picsum.photos/200/300"))
                .resizable()
                .cornerRadius(16.0)
            
            VStack(alignment: .leading) {
                HStack {
                    PillView()
                        .padding(pillViewPadding)
                    
                    Spacer()
                }
                
                Spacer()
                AdditionalUsersView(containerHeight: Self.calculatedMaxHeight)
                    .offset(y: Self.calculateBottomOffset())
            }
        }
        .frame(
            maxWidth: Self.calculatedMaxWidth,
            maxHeight: Self.calculatedMaxHeight
        )
    }
}

struct PillView: View {
    var body: some View {
        HStack(spacing: 8) {
            Image("ic-lightning")
                .resizable()
                .scaledToFit()
                .frame(width: 16, height: 16)

            Text("Available today!")
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.horizontal, 16.0)
        .padding(.vertical, 8.0)
        .background(
            Color.black.opacity(0.5)
        )
        .cornerRadius(20)
    }
}

struct AdditionalUsersView: View {
    @SwiftUI.Environment(\.colorScheme) var colorScheme : ColorScheme
    
    static let imageScale: CGFloat = 40.0 / 160.0
    private let borderBackgroundInset: CGFloat = 3.0
    
    private let containerHeight: CGFloat
    private var calculatedImageSize: CGFloat {
        containerHeight * Self.imageScale
    }
    
    init(containerHeight: CGFloat) {
        self.containerHeight = containerHeight
    }
    
    private func generateMockImageUrl() -> URL? {
        let roundedImageSize: Int = Int(round(calculatedImageSize))
        
        if let url: URL =
            URL(string: "https://picsum.photos/\(roundedImageSize)/\(roundedImageSize)") {
            
            print("@titus: url success, returns = \(url)")
            return url
        }
        else {
            print("@titus: Couldn't generate mock image URL =  \("https://picsum.photos/400/400")")
            return URL(string: "https://picsum.photos/400/400")
        }
    }
    
    var body: some View {
        HStack {
            KFImage(generateMockImageUrl())
                .resizable()
                .frame(width: calculatedImageSize, height: calculatedImageSize)
                .cornerRadius(calculatedImageSize / 2)
            ZStack {
                Rectangle()
                    .fill(ColorToolSWUI.backgroundColor(for: colorScheme))
                    .frame(
                        width: calculatedImageSize + borderBackgroundInset,
                        height: calculatedImageSize + borderBackgroundInset
                    )
                    .cornerRadius(calculatedImageSize / 2)
                    .offset(x: -calculatedImageSize / 2)
                KFImage(generateMockImageUrl())
                    .resizable()
                    .frame(
                        width: calculatedImageSize,
                        height: calculatedImageSize
                    )
                    .cornerRadius(calculatedImageSize / 2)
                    .offset(x: -calculatedImageSize / 2)
            }
            
            Spacer()
        }
    }
}

#Preview {
    ProfileView()
        .padding()
}
