//
//  ContentView2.swift
//  infinity
//
//  Created by faheem yousuf malla on 21/09/25.
//

import SwiftUI

struct ContentView2: View {
    var body: some View {
        NavigationView {
            Home()
                .padding(.top)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Learn,Explore Maths")
                            .font(.system(size: 24, weight: .heavy, design: .rounded))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.indigo, .purple],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .shadow(color: .black.opacity(0.2), radius: 2, x: 0, y: 1)
                            .padding(.top, 2)
                    }
                }
                .preferredColorScheme(.dark)
        }
    }
}
#Preview {
    ContentView2()
}
