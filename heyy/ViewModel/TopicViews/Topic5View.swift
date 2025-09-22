//
//  topic5View.swift
//  infinity
//
//  Created by faheem yousuf malla on 21/09/25.
//

import SwiftUI

struct Topic5View: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            Text("Skyline Beats Content")
                .font(.largeTitle)
                .padding()
            Spacer()
            Button("Get back"){
                dismiss()
            }
        }
        .navigationTitle("Skyline Beats")
        .navigationBarBackButtonHidden()
    }
}
