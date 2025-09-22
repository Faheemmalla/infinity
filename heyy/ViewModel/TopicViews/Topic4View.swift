//
//  topic4View.swift
//  infinity
//
//  Created by faheem yousuf malla on 21/09/25.
//

import SwiftUI

struct Topic4View: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            Text("Golden Hour Content")
                .font(.largeTitle)
                .padding()
            Spacer()
            Button("Get back"){
                dismiss()
            }
        }
        .navigationTitle("Golden Hour")
        .navigationBarBackButtonHidden()
    }
}
