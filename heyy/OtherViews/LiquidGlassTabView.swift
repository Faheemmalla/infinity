//
//  LiquidGlassTabView.swift
//  infinity
//
//  Created by faheem yousuf malla on 17/09/25.
//

import SwiftUI

enum Tabs {
    case learn, play, scan, search
}

struct LiquidGlassTabView: View {
    @State var selectedTab: Tabs = .learn
    @State var searchString = " "
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Learn", systemImage: "pencil.circle.fill", value: .learn) {
                LearnView()
            }
            Tab("Play", systemImage: "gamecontroller.fill", value: .play) {
                ContentView()
            }
            Tab("Scan", systemImage: "camera.viewfinder", value: .scan) {
                Color.purple.ignoresSafeArea()
            }
            Tab("Explore", systemImage: "book.pages", value: .scan) {
                Color.brown.ignoresSafeArea()
            }

            
        }
        .navigationBarBackButtonHidden()
    }
}
#Preview {
    LiquidGlassTabView()
}
