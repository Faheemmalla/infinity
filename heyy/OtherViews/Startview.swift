//
//  Startview.swift
//  infinity
//
//  Created by faheem yousuf malla on 17/09/25.
//

import SwiftUI

struct StartView: View {
    @State private var scale: CGFloat = 1.0
    @State private var opacity: Double = 1.0
    @State private var gradientStartColor: Color = .blue
    @State private var gradientEndColor: Color = .purple

    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: [.teal.opacity(0.3), .blue.opacity(0.2)],
                               startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    
                    Spacer()
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 220, height: 220)
                        .scaleEffect(scale)
                        .onAppear {
                            withAnimation(.easeInOut(duration: 3).repeatForever(autoreverses: true)) {
                                scale = 1.05
                            }
                        }
                    Text("Learn · Play · Explore Maths")
                        .font(.title3.bold())
                        .foregroundStyle(
                            LinearGradient(colors: [.blue, .purple],
                                           startPoint: .leading,
                                           endPoint: .trailing)
                        )
                        .multilineTextAlignment(.center)
                        .shadow(color: .black.opacity(0.15), radius: 2, x: 1, y: 1)
                    Text("Your Journey into Infinity")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.bottom, 30)
                    
                    Spacer()
                    NavigationLink(destination: LiquidGlassTabView()) {
                        Text("Start")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 160, height: 50)
                            .background(
                                .ultraThinMaterial,
                                in: RoundedRectangle(cornerRadius: 20, style: .continuous)
                            )
                            .overlay(
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .stroke(
                                        LinearGradient(colors: [gradientStartColor, gradientEndColor],
                                                       startPoint: .topLeading,
                                                       endPoint: .bottomTrailing),
                                        lineWidth: 2
                                    )
                            )
                            .shadow(color: .black.opacity(0.15), radius: 10, x: 0, y: 5)
                            .scaleEffect(scale)
                            .opacity(opacity)
                    }
                    .onAppear {
                        withAnimation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true)) {
                            scale = 1.1
                            opacity = 0.8
                        }
                    }
                    
                    Spacer()
                    Text("Numbers Never End")
                        .font(.caption2)
                        .foregroundColor(.gray.opacity(1))
                        .padding(.bottom, 10)
                }
                .padding()
            }
        }
    }
}

#Preview {
    StartView()
}

