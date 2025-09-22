//
//  topic2View.swift
//  infinity
//
//  Created by faheem yousuf malla on 21/09/25.
//

import SwiftUI

struct Topic2View: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            Text("Ocean Dreams Content")
                .font(.largeTitle)
                .padding()
            Spacer()
            Button("Get back"){
                dismiss()
            }
        }
        .navigationTitle("Ocean Dreams")
        .navigationBarBackButtonHidden()
    }
}
