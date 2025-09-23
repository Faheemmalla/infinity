//
//  topic1View.swift
//  infinity
//
//  Created by faheem yousuf malla on 21/09/25.
//

import SwiftUI

struct Topic1View: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            Text("Midnight Vibes Content")
                .font(.largeTitle)
                .padding()
            Text("hey 1")
            Spacer()
            Button(action:{
                dismiss()
            }, label:{
                Image("backLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 45)
            })
        }
        .navigationBarBackButtonHidden()
        .navigationTitle("Midnight Vibes")
    }
}
