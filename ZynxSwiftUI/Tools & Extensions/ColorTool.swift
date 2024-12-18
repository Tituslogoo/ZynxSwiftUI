//
//  ColorTool.swift
//  ZynxSwiftUI
//
//  Created by Titus Logo on 13/12/24.
//

import Foundation
import SwiftUI
import UIKit

final class ColorToolSWUI {
    static func fontColor(for colorScheme: ColorScheme) -> Color {
        colorScheme == .dark
        ? .white
        : .black
    }
    
    static func backgroundColor(for colorScheme: ColorScheme) -> Color {
        colorScheme == .dark
        ? .black
        : .white
    }
}
