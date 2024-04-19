//
//  NavigationBarColorModifier.swift
//  ChatApp
//
//  Created by Jor . on 18/04/2024.
//

import Foundation
import SwiftUI

struct NavigationBarColor: ViewModifier {
    
    var backgroundColor: Color
    
    init(backgroundColor: Color) {
        self.backgroundColor = backgroundColor
        let colorAppearance = UINavigationBarAppearance()
        colorAppearance.backgroundColor = UIColor(backgroundColor)
        UINavigationBar.appearance().standardAppearance = colorAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = colorAppearance
    }
    func body(content: Content) -> some View {
        content.background(backgroundColor)
    }
}

extension View {
    
    func navigationBarColor(backgroundColor: Color) -> some View {
        return modifier(NavigationBarColor(backgroundColor: backgroundColor))
    }
}
