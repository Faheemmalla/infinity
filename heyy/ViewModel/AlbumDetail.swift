//
//  AlbumDetail.swift
//  infinity
//
//  Created by faheem yousuf malla on 21/09/25.
//

import SwiftUI

struct AlbumDetail: View {
    var album: Album

    var body: some View {
        VStack(spacing: 20) {
            Image(album.album_cover)
                .resizable()
                .scaledToFit()
                .frame(height: 250)
                .cornerRadius(20)

            Text(album.album_name)
                .font(.title)
                .fontWeight(.bold)

            Text(album.album_author)
                .font(.headline)
                .foregroundColor(.gray)

            Spacer()
        }
        .padding()
        .navigationTitle(album.album_name)
    }
}

