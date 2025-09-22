//
//  topic3View.swift
//  infinity
//
//  Created by faheem yousuf malla on 21/09/25.
//

import SwiftUI

struct Topic3View: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            Text("City Lights Content")
                .font(.largeTitle)
                .padding()
            Spacer()
            Button("Get back"){
                dismiss()
            }
        }
        .navigationTitle("City Lights")
        .navigationBarBackButtonHidden()
    }
}
