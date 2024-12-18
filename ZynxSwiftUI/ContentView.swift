//
//  ContentView.swift
//  ZynxSwiftUI
//
//  Created by Titus Logo on 12/12/24.
//

import SwiftUI

struct ContentView: View {
    @SwiftUI.Environment(\.colorScheme) var colorScheme : ColorScheme
    
    var body: some View {
        VStack(alignment: .leading) {
            HeaderView()
            ProfileView()
            ProfileDescriptionView(
                rating: 4.5,
                reviewCount: 200,
                pricePerHour: 225.5
            )
            .padding(EdgeInsets(
                top: ProfileView.calculateBottomOffset(),
                leading: .zero,
                bottom: .zero,
                trailing: .zero
            ))
            Spacer()
            
        }
        .background(ColorToolSWUI.backgroundColor(for: colorScheme))
        .padding()
    }
}

#Preview {
    ContentView()
}
