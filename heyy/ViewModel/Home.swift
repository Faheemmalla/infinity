//
//  Home.swift
//  infinity
//
//  Created by faheem yousuf malla on 20/09/25.
//

import SwiftUI

struct Home: View {
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 15), count: 1)
    @StateObject var ModelData = HomeViewModel()
    @State var width = ((UIApplication.shared.connectedScenes.first as? UIWindowScene)?.screen.bounds.width ?? 0 - 45) / 2
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 15) {
                
                ForEach(ModelData.items, id: \.album_name) { album in
                    
                    // ✅ NavigationLink to individual pages
                    NavigationLink(destination: destinationView(for: album)) {
                        CustomView(columns: $columns) {
                            Image(album.album_cover)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: columns.count == 1 ? 65 : width,
                                       height: columns.count == 1 ? 65 : width)
                                .cornerRadius(15)
                        } detail: {
                            VStack(alignment: .leading, spacing: 10) {
                                Text(album.album_name)
                                    .fontWeight(.heavy)
                                
                                Text(album.album_author)
                                    .font(.caption)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    .buttonStyle(PlainButtonStyle()) // removes default highlight
                }
            }
        }
        .toolbar {
            Button(action: {
                withAnimation {
                    if columns.count == 2 {
                        columns.removeLast()
                    } else {
                        columns.append(GridItem(.flexible(), spacing: 15))
                    }
                }
            }) {
                Image(systemName: columns.count == 1 ? "rectangle.grid.1x2" : "rectangle.grid.3x2")
                    .font(.title)
                    .foregroundColor(.white)
            }
        }
    }
    @ViewBuilder
    func destinationView(for album: Album) -> some View {
        switch album.album_name {
        case "Midnight Vibes":
            Topic1View()
        case "Ocean Dreams":
            Topic2View()
        case "City Lights":
            Topic3View()
        case "Golden Hour":
            Topic4View()
        case "Skyline Beats":
            Topic5View()
        case "Retro Nights":
            RetroNightsPage()
        case "Chill Zone":
            ChillZonePage()
        case "Electric Pulse":
            ElectricPulsePage()
        case "Lost in Space":
            LostInSpacePage()
        case "Morning Breeze":
            MorningBreezePage()
        case "Desert Storm":
            DesertStormPage()
        case "Rainy Moods":
            RainyMoodsPage()
        case "Wanderlust":
            WanderlustPage()
        case "Silent Echoes":
            SilentEchoesPage()
        case "Neon Nights":
            NeonNightsPage()
        default:
            Text("Coming Soon 🚀")
        }
    }
}



