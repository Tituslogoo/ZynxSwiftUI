//
//  ProfileDescriptionView.swift
//  ZynxSwiftUI
//
//  Created by Titus Logo on 13/12/24.
//

import SwiftUI

struct ProfileDescriptionView: View {
    @SwiftUI.Environment(\.colorScheme) var colorScheme : ColorScheme
    
    let rating: Double
    let reviewCount: Int
    let pricePerHour: Double
    
    private let iconSize: CGFloat = 20.0
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            // Rating Section
            HStack(spacing: 4.0) {
                Image("ic-star")
                    .resizable()
                    .frame(width: iconSize, height: iconSize)
                
                Text("\(rating, specifier: "%.1f")")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(ColorToolSWUI.fontColor(for: colorScheme))
                
                Text("(\(reviewCount))")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
            }
            
            // Mana Section
            HStack(spacing: 4.0) {
                Image("ic-mana")
                    .resizable()
                    .frame(width: iconSize, height: iconSize)
                
                Text("\(pricePerHour, specifier: "%.2f")/1Hr")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(ColorToolSWUI.fontColor(for: colorScheme))
            }
        }
    }
}

#Preview {
    ProfileDescriptionView(
        rating: 4.5,
        reviewCount: 200,
        pricePerHour: 225.5
    )
    .padding()
}
